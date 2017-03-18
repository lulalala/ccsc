require 'active_interaction'

class Forum::UpdateTopic < ActiveInteraction::Base
  object :topic, class: Forum::Topic
  string :author
  string :title
  string :content

  def execute
    topic.update(
      title: title
    )

    Forum::Topic.transaction do
      if !topic.save
        errors.merge!(topic.errors)
      end

      compose(
        Comment::Update,
        owner: topic,
        author: author,
        content: content
      )
    end

    topic
  end
end
