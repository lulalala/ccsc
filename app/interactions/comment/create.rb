require 'active_interaction'

class Comment::Create < ActiveInteraction::Base
  object :owner, default: nil, class: Object
  string :author
  string :content
  boolean :content_is_html, default: false

  def execute
    topic = owner.comment_topic
    if topic.nil?
      topic = Comment::Topic.new(owner: owner)
    end

    if content_is_html
      post = topic.posts.build(
        author: author,
        content_html: content
      )
    else
      post = topic.posts.build(
        author: author,
        content: content
      )
    end

    post.save

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
