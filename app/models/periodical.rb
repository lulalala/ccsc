class Periodical < ActiveRecord::Base
  has_many :periodical_entries
  mount_uploader :image, FountainUploader

  validates :issue, presence: true
  validates :title, presence: true
end
