class FountainEntry < ActiveRecord::Base
  belongs_to :fountain
  has_one :post, as: :owner

  accepts_nested_attributes_for :post

  delegate :title, :body, :author, to: :post

  validates :fountain_id, presence: true
  validates :post_id, presence: true
end
