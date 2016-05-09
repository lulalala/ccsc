class FountainEntry < ActiveRecord::Base
  belongs_to :fountain
  has_one :post, as: :owner

  accepts_nested_attributes_for :post
end
