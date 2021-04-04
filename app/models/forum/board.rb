module Forum
  class Board < ApplicationRecord
    has_many :topics, inverse_of: :board, class_name: "Forum::Topic"

    serialize :config, BoardConfigSerializer

    def admin
      self.config[:admin]
    end

    def admin=(admin)
      self.config[:admin] = admin
    end

  end
end
