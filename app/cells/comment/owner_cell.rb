module Comment
  class OwnerCell < Cell::Rails
    helper ApplicationHelper

    def form(owner)
      @owner = owner
      render
    end

    def show(owner)
      @owner = owner
      render
    end
  end
end
