require 'active_interaction'

class Comment::Update < ActiveInteraction::Base
  object :post, class: Comment::Post
  string :author
  string :content_html

  def execute
    post.update(
      author: author,
      content_html: content_html,
      content: content_html
    )

    [post, post].each {|model|
      if !model.persisted?
        errors.merge!(model.errors)
      end
    }
    topic = post.topic
    topic.commented_at = post.updated_at
    topic.save

    topic
  end
end
