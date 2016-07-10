class CultureEntry < ActiveRecord::Base
  CATEGORIES = ['宗旨', '小故事小道理', '論文']

  has_one :post, as: :owner
  belongs_to :category
  accepts_nested_attributes_for :post
end
