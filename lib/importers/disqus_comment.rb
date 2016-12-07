require 'mtif'
require 'importers/mtif_comment'

xml = Builder::XmlMarkup.new(:indent => 2)

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
          xml.link Rails.application.routes.url_helpers.periodical_entry_path(e)
          xml.content(:encoded) { |x| x << "<!--[CDATA[" + post.body + "]]-->" }
          xml.dsq(:thread_identifier) { |x| x << "post/#{post.id}" }
          xml.wp(:post_date_gmt) { |x| x << post.created_at.utc.to_formatted_s(:db) }
          xml.wp(:comment_status) { |x| x << "open" } #all comments open

          comments.each_with_index do |c, index|
            mc = MTIF::Comment.new(c).data

            xml.wp(:comment) do
              xml.wp(:comment_id) { |x| x << "post/#{post.id}/#{index+1}" }
              xml.wp(:comment_author) do |x|
                x << (mc[:author] || "")
              end
              xml.wp(:comment_author_email) do |x|
                x << (mc[:email] || "")
              end
              xml.wp(:comment_author_url) do |x|
                x << (mc[:url] || "")
              end

              xml.wp(:comment_author_IP) { |x|
                x << (mc[:ip]|| "")
              }

              xml.wp(:comment_date_gmt) { |x|
                time = mc[:date] || post.created_at
                x << time.utc.to_formatted_s(:db)
              }

              xml.wp(:comment_content) { |x|
                body = mc[:body] || ""
                x << "<!--[CDATA[" + body + "]]-->"
              }

              xml.wp(:comment_approved) { |x| x << 1 } #approve all comments

              xml.wp(:comment_parent) { |x| x << 0 }
            end
          end
        end
      end
    end
  end
end
