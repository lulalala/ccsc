module Comment
  class PostCell < Cell::Rails
    helper ApplicationHelper

    def show(post)
      @post = post
      render
    end
  end
end
