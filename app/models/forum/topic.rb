module Forum
  class Topic < ApplicationRecord
    belongs_to :board, class_name: "Forum::Board", optional: true
    has_one :comment_topic, class_name:'Comment::Topic', as: :owner
    acts_as_list scope: :board

    validates :title, presence: true
  end
end
