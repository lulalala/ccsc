class Notice < ApplicationRecord
  belongs_to :group, inverse_of: :notices

  validates :group_id, presence: true
  validates :title, presence: true
end
