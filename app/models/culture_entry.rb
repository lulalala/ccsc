class CultureEntry < ActiveRecord::Base
  CATEGORIES = ['詣', '小故事小道理', '論文']

  has_one :post, as: :owner
  accepts_nested_attributes_for :post
end
