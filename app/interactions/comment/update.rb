require 'active_interaction'

class Comment::Update < ActiveInteraction::Base
  object :owner, default: nil, class: Object
  string :author
  string :content

  def execute
    topic = owner.comment_topic
    if topic.nil?
      topic = Comment::Topic.new(owner: owner)
    end

    post = topic.posts.update(
      author: author,
      content: content
    )

    [post, post].each {|model|
      if !model.persisted?
        errors.merge!(model.errors)
      end
    }
    topic.commented_at = post.created_at
    topic.save

    topic
  end
end