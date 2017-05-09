module Comment
  class OwnerCell < Cell::Rails
    helper ApplicationHelper

    def form(owner, under_admin = false)
      @owner = owner
      @under_admin = under_admin = false
      if under_admin
        @url = admin_comment_posts_path
      else
        @url = comment_posts_path
      end

      render
    end

    def show(owner)
      @owner = owner
      render
    end
  end
end
