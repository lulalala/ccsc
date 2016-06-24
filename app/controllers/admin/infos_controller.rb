class Admin::InfosController < Admin::BaseController
  def index
    @infos = Info.order(id: :asc).all
  end

  def new
    @info = Info.new
  end

  def create
    @info = Info.create(info_params)
    if @info
      redirect_to admin_infos_path
    else
      render :new
    end
  end

  def edit
    @info = Info.find(params[:id])
  end

  def update
    @info = Info.find(params[:id])
    if @info.update_attributes(info_params)
      redirect_to admin_infos_path
    else
      render :edit
    end
  end

  private

  def info_params
    params.require(:info).permit(:title, :body)
  end
end
