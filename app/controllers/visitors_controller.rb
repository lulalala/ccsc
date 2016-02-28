class VisitorsController < ApplicationController
  def index
    @notice = Notice.order(id: :desc).first
  end
end
