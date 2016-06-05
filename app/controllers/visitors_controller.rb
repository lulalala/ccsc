class VisitorsController < ApplicationController
  def index
    @notice = Notice.order(id: :desc).first
    @culture_entry = CultureEntry.order("RANDOM()").first
  end
end
