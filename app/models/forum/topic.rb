module Forum
  class Topic < ActiveRecord::Base
    belongs_to :board, class_name: "Forum::Board"
    has_one :comment_topic, class_name:'Comment::Topic', as: :owner
  end
end
