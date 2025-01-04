module Comment
  class PostCell < ApplicationCell
    helper ApplicationHelper
    helper Devise::Controllers::Helpers

    def show(post)
      @post = post
      render
    end
  end
end
