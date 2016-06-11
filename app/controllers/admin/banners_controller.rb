class Admin::BannersController < Admin::BaseController
  def index
    @banners = Banner.all
  end

  def new
    @banner = Banner.new
  end

  def create
    @banner = Banner.create(banner_params)
    if @banner
      redirect_to admin_banners_path
    else
      render :new
    end
  end

  def edit
    @banner = Banner.find(params[:id])
  end

  def update
    @banner = Banner.find(params[:id])
    if @banner.update_attributes(banner_params)
      redirect_to admin_banners_path
    else
      render :edit
    end
  end

  private

  def banner_params
    params.require(:banner).permit(:name, :image)
  end
end
