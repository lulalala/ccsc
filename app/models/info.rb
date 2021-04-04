class Info < ApplicationRecord
  validates :seo_name, presence:true
  validates :title, presence:true
end
