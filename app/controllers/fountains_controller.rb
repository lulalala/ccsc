class FountainsController < ApplicationController
  before_action :set_fountain, only: [:show]

  # GET /fountains
  def index
    @fountains = Fountain.order(id: :desc).page(params[:page])
  end

  # GET /fountains/1
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fountain
      @fountain = Fountain.find(params[:id])
    end
end
