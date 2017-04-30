require 'active_interaction'

class Forum::CreateTopic < ActiveInteraction::Base
  object :board, class: Forum::Board
  string :author
  string :title
  string :content
  integer :position, default: nil
  boolean :content_is_html, default: false

  def execute
    board_topic = board.topics.build(
      title: title,
      position: position
    )

    Forum::Topic.transaction do
      if !board_topic.save
        errors.merge!(board_topic.errors)
      end

      compose(
        Comment::Create,
        owner: board_topic,
        author: author,
        content: content,
        content_is_html: content_is_html
      )
    end

    board_topic
  end
end
