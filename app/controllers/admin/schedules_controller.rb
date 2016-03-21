class Admin::SchedulesController < Admin::BaseController
  before_action :set_schedule, only: [:show, :edit, :update, :destroy]
  def index
    @groups = Group.all
  end

  def show
  end

  def new
    @schedule = Schedule.new
  end

  def create
    @schedule = Schedule.new(schedule_params)
    if @schedule.save
      redirect_to admin_schedules_path, notice: "Schedule was successfully created"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @schedule.update(schedule_params)
      redirect_to admin_schedules_path, notice: "Schedule was successfully updated"
    else
      render 'edit'
    end

  end

  def destroy
    @schedule.destroy
    redirect_to admin_schedules_path, notice: "Schedule was successfully destroyed"
  end

  private

  def set_schedule
    @schedule = Schedule.find(params[:id])
  end

  def schedule_params
    params.require(:schedule).permit(:body, :group_id)
  end

end
