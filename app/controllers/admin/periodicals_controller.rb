class Admin::PeriodicalsController < Admin::BaseController
  before_action :set_periodical, only: [:edit, :update, :destroy]

  def index
    @periodicals = model_class.order(id: :desc).page(params[:page])
  end

  def new
    @periodical = model_class.new
  end

  def edit
  end

  def create
    @periodical = model_class.new(periodical_params)

    respond_to do |format|
      if @periodical.save
        format.html { redirect_to [:edit, :admin, @periodical], notice: 'successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @periodical.update(periodical_params)
        format.html { redirect_to [:edit, :admin, @periodical], notice: 'successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @periodical.destroy
    respond_to do |format|
      format.html { redirect_to [:admin, model_class], notice: 'successfully destroyed.' }
    end
  end

  private

  def set_periodical
    @periodical = model_class.find(params[:id])
  end

  def periodical_params
    params.require(:periodical).permit!
  end

  def model_class
    params[:type].constantize if params[:type].in?(["Fountain"])
  end
  helper_method :model_class
end
