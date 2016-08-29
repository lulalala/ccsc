class FountainEntriesController < ApplicationController
  # GET /posts/1
  def show
    @entry = FountainEntry.find(params[:id])
    @post = @entry.post
  end
end
