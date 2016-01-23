class Post < ActiveRecord::Base
  belongs_to :user

  serialize :misc, Hash
end
