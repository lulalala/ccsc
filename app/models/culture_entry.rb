class CultureEntry < ApplicationRecord
  CATEGORIES = ['宗旨', '小故事小道理', '論文']

  has_one :post, as: :owner
  belongs_to :category, optional: true
  has_one :comment_topic, class_name:'Comment::Topic', as: :owner
  accepts_nested_attributes_for :post

  validates :category_id, presence: true
end
