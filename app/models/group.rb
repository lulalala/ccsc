class Group < ActiveRecord::Base
  has_many :notices, inverse_of: :group
  has_many :schedules

  def latest_schedule
    self.schedules.last.body
  end

  def latest_created_at
    self.schedules.last.created_at.strftime("%Y/%m/%d-%H:%M")
  end
end
