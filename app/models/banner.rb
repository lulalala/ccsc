class Banner < ApplicationRecord
  mount_uploader :image, BannerUploader

  validates :name, presence: true
  validates :image, presence: true
end
