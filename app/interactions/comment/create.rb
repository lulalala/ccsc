require 'active_interaction'

class Comment::Create < ActiveInteraction::Base
  object :owner, default: nil, class: Object
  string :author
  string :content

  def execute
    topic = owner.comment_topic
    if topic.nil?
      topic = Comment::Topic.new(owner: owner)
    end

    post = topic.posts.build(
      author: author,
      content: content
    )

    post.save

    [post, post].each {|model|
      if !model.persisted?
        errors.merge!(model.errors)
      end
    }

    topic
  end
end
