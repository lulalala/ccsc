class PeriodicalEntriesController < ApplicationController
  # GET /posts/1
  def show
    @entry = PeriodicalEntry.find(params[:id])
    @post = @entry.post
  end
end
