class Schedule < ActiveRecord::Base
  belongs_to :group

  validates :group_id, presence:true
end
