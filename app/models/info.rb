class Info < ActiveRecord::Base
  validates :seo_name, presence:true
  validates :title, presence:true
end
