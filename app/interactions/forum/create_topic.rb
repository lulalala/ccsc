require 'active_interaction'

class Forum::CreateTopic < ActiveInteraction::Base
  object :board, class: Forum::Board
  string :author
  string :title
  string :content

  def execute
    board_topic = board.topics.build(
      title: title
    )

    Forum::Topic.transaction do
      if !board_topic.save
        errors.merge!(board_topic.errors)
      end

      compose(
        Comment::Create,
        owner: board_topic,
        author: author,
        content: content
      )
    end

    board_topic
  end
end
