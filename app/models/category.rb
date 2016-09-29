class Category < ActiveRecord::Base
  belongs_to :parent, class_name:'Category'
  has_many :children, class_name:'Category', foreign_key: :parent_id

  validates :name, presence: true
  validates :scope, presence: true
end
