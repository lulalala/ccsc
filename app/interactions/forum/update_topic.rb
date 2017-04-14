require 'active_interaction'

class Forum::UpdateTopic < ActiveInteraction::Base
  object :topic, class: Forum::Topic
  string :title
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
    end

    topic
  end
end
