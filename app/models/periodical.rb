class Periodical < ApplicationRecord
  has_many :entries, class_name: "PeriodicalEntry"
  mount_uploader :image, FountainUploader

  validates :issue, presence: true
  validates :title, presence: true
end
