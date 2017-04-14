require 'active_interaction'

class Comment::Update < ActiveInteraction::Base
  object :post, class: Comment::Post
  string :author
  string :content

  def execute

    post.update(
      author: author,
      content: content
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
