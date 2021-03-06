class Group < ApplicationRecord
  has_many :notices, inverse_of: :group
  has_many :schedules

  validates :name, presence: true

  def latest_schedule
    self.schedules.last.try(:body)
  end

  def latest_created_at
    self.schedules.last.try(:created_at).try(:strftime, "%Y/%m/%d-%H:%M")
  end
end
