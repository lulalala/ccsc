class Fountain < ActiveRecord::Base
  has_many :fountain_entries

  mount_uploader :image, FountainUploader
end
