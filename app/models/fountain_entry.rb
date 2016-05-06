class FountainEntry < ActiveRecord::Base
  belongs_to :fountain
  has_one :post, as: :owner
end
