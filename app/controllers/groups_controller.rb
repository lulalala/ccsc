class GroupsController < ApplicationController
  before_action :set_fountain, only: [:show]

  # GET /groups/1
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fountain
      @group = Group.find(params[:id])
    end
end
