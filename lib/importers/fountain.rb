require 'nokogiri'
require 'open-uri'

class FetchPage
  attr_accessor :post, :doc

  def initialize(url, issue)
    @post = Post.new
    @url = url
    @doc = Nokogiri.HTML(open(url, redirect:false))
    @fountain = Fountain.find_by(issue:issue)
    parse
  end

  def parse
    author = @doc.css("body>table table tr:nth-child(4) td div:first-child").text
    author.gsub!("■","")
    author.strip!
    if author.size > 100
      author = ""
    end

    title = @doc.css("body>table table tr:nth-child(3) td marquee").text
    title.gsub!("■","")
    title.strip!

    body = @doc.css("body>table table tr:nth-child(4) td")
    body.search('div:first-child[align=right]').each do |src|
      src.remove
    end
    body.css('p:first-child').find_all{|p| all_children_are_blank?(p) }.each do |p|
      p.remove
    end
    body.css('img').each do |p|
      if p.attr(:src).include?("tit2.gif")
        p.remove
      end
    end
    body.css("p").each {|p|
      if p.text.start_with?("目") && p.text.include?("目　錄")
        p.remove
      end
    }
    body = body.inner_html
    body.strip!

    @post.body = body
    @post.title = title
    @post.author = author
    @post.misc = {url: @url}
  end

  def save
    Post.transaction do
      @post.save!

      FountainEntry.create!(fountain_id: @fountain.id, post_id: @post.id)
    end
  end

  def is_blank?(node)
    (node.text? && node.content.strip.blank?) || (node.element? && node.name == 'br')
  end

  def all_children_are_blank?(node)
    node.children.all?{|child| is_blank?(child) }
    # Here you see the convenience of monkeypatching... sometimes.
  end
end

(1..91).each do |i|
  Fountain.find_or_create_by(issue:i, title:i)

  i_s = "%02d" % i

  j = 0
  while(true) do
    j += 1
    j_s = "%02d" % j
    url = "http://www.catholic.org.tw/ccsc/book/ind#{i_s}#{j_s}.htm"
    puts url

    begin
      p = FetchPage.new(url, i)
      p.save
    rescue OpenURI::HTTPError, OpenURI::HTTPRedirect
      break
    end
  end
end
