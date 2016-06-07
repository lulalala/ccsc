class NoticesController < ApplicationController
  def index
    @group = Group.find(params[:group_id])
    @notices = @group.notices.order(id: :desc)
  end

  def show
    @group = Group.find(params[:group_id])
    @notice = @group.notices.find(params[:id])
  end
end
