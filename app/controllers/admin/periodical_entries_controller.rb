class Admin::PeriodicalEntriesController < Admin::BaseController
  before_action :set_periodical_entry, only: [:edit, :update, :destroy]

  def new
    @periodical = Periodical.find(params[:periodical_id])
    @periodical_entry = @periodical.entries.build
    @periodical_entry.build_post
  end

  def edit
  end

  def create
    @periodical_entry = PeriodicalEntry.new(periodical_entry_params)

    if @periodical_entry.save
      redirect_to edit_admin_periodical_path(@periodical_entry.periodical), notice: 'successfully created.'
    else
      render :new
    end
  end

  def update
    if @periodical_entry.update(periodical_entry_params)
      redirect_to edit_admin_periodical_path(@periodical_entry.periodical), notice: 'successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @periodical_entry.destroy
    redirect_to edit_admin_periodical_path(@periodical_entry.periodical), notice: 'successfully destroyed.'
  end

  private

  def set_periodical_entry
    @periodical_entry = PeriodicalEntry.find(params[:id])
  end

  def periodical_entry_params
    params.require(:periodical_entry).permit([{post_attributes: [:title, :author, :body]}, :periodical_id, :category, :order])
  end
end
