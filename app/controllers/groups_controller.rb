class GroupsController < ApplicationController
  # GET /groups/1
  def show
    @group = Group.find(params[:id])
    @notice = @group.notices.order(id: :desc).first

    if @notice
      redirect_to url_for([@group, @notice])
    else
    end
  end
end
