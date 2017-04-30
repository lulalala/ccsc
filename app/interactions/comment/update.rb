require 'active_interaction'

class Comment::Update < ActiveInteraction::Base
  object :post, class: Comment::Post
  string :author
  string :content
  boolean :content_is_html, default: false

  def execute
    if content_is_html
      post.update(
        author: author,
        content_html: content
      )
      post.update_columns(content: nil)
    else
      post.update(
        author: author,
        content: content
      )
    end

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
