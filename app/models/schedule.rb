class Schedule < ApplicationRecord
  belongs_to :group, optional: true

  validates :group_id, presence:true
end
