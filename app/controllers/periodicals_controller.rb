class PeriodicalsController < ApplicationController
  before_action :set_periodical, only: [:show]

  def index
    @periodicals = model_class.order(id: :desc).page(params[:page])
  end

  def show
  end

  private

  def set_periodical
    @periodical = model_class.find(params[:id])
  end

  def model_class
    params[:type].constantize if params[:type].in?(["Fountain", "Seed"])
  end
  helper_method :model_class
end
