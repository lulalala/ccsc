module Forum
  class Board < ActiveRecord::Base
    has_many :topics, inverse_of: :board, class_name: "Forum::Topic"

    serialize :config, BoardConfigSerializer
  end
end
