class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all  
    @groups = Group.all
  end
end
