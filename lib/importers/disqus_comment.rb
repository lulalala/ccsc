require 'mtif'
require 'importers/mtif_comment'

keys= {comment_author: :author, comment_author_email: :email, comment_author_url: :url, comment_author_IP: :ip}
xml = Builder::XmlMarkup.new
xml.instruct! :xml, :version=>"1.0", :encoding=>"UTF-8"
xml.rss 'version' => "2.0",
  'xmlns:content' => "http://purl.org/rss/1.0/modules/content/",
  'xmlns:dsq' => "http://www.disqus.com/",
  'xmlns:dc' => "http://purl.org/dc/elements/1.1/",
  'xmlns:wp' => "http://wordpress.org/export/1.0/" do

  xml.channel do
    Seed.find_each do |seed|
      seed.entries.each do |e|
        post = e.post
        comments = post.misc[:comment]
        next if comments.blank?
        xml.item do
          xml.title post.title
          url = "http://ccsc.org.tw/periodical_entries/#{e.id}"
          xml.link url
          xml.content(:encoded) {
            doc = Nokogiri::HTML(post.body)
            doc.xpath("//script").remove
            xml.cdata!(doc.text)
          }
          xml.dsq(:thread_identifier) { |x| x << "post/#{post.id}" }
          xml.wp(:post_date_gmt) { |x| x << post.created_at.utc.to_formatted_s(:db) }
          xml.wp(:comment_status) { |x| x << "open" } #all comments open

          comments.each_with_index do |c, index|
            mc = MTIF::Comment.new(c).data

            body = mc[:body].strip || ""
            if body.length < 3
              next
            end

            xml.wp(:comment) do
              xml.wp(:comment_id) { |x| x << "post/#{post.id}/#{index+1}" }

              keys.each {|disqus_key, mtif_key|
                xml.wp(disqus_key) do |x|
                  x << (mc[mtif_key].try(:strip) || "")
                end
              }

              xml.wp(:comment_date_gmt) { |x|
                time = mc[:date] || post.created_at
                x << time.utc.to_formatted_s(:db)
              }

              xml.wp(:comment_content) {
                xml.cdata!(body)
              }

              xml.wp(:comment_approved) { |x| x << '1' } #approve all comments
              xml.wp(:comment_parent) { |x| x << '0' }
            end
          end
        end
      end
    end
  end
end
File.write("xml.xml", xml.target!)
