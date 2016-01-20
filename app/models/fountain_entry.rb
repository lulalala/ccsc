class FountainEntry < ActiveRecord::Base
  belongs_to :fountain
  belongs_to :post
end
