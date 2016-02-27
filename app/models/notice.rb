class Notice < ActiveRecord::Base
  belongs_to :group, inverse_of: :notices
end
