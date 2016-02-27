class Group < ActiveRecord::Base
  has_many :notices, inverse_of: :group
end
