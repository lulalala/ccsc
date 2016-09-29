class Fountain < ActiveRecord::Base
  has_many :fountain_entries

  mount_uploader :image, FountainUploader

  validates :issue, presence: true
  validates :title, presence: true
end
