require 'active_interaction'

class Forum::UpdateTopic < ActiveInteraction::Base
  object :topic, class: Forum::Topic
  string :author
  string :title
  string :content
  integer :position, default: nil

  def execute
    topic.assign_attributes(
      title: title,
      position: position
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
