require 'comment'

module Comment
  class Topic < ApplicationRecord
    belongs_to :owner, polymorphic: true
    has_many :posts, inverse_of: :topic, dependent: :destroy, class_name: "Comment::Post"
  end
end
