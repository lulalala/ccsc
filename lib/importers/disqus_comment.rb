require 'mtif'
require 'importers/mtif_comment'

Seed.find_each do |seed|
  seed.entries.each do |e|
    post = e.post
    comments = post.misc[:comment]
    next if comments.blank?

      comments.each_with_index do |c, index|
        mc = MTIF::Comment.new(c).data

        body = mc[:body].strip || ""
        time = mc[:date] || post.created_at
        author = mc[:author] || ""

        ct = post.create_comment_topic()
        ct.posts.create(
          author: author,
          content: body,
          created_at: time,
          updated_at: time
        )
      end
    end
  end
end
