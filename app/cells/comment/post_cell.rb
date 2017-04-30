module Comment
  class PostCell < Cell::Rails
    helper ApplicationHelper
    helper Devise::Controllers::Helpers

    def show(post)
      @post = post
      render
    end
  end
end
