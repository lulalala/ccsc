class Admin::NoticesController < Admin::BaseController
  before_action :set_admin_notice, only: [:edit, :update, :destroy]

  # GET /admin/notices
  def index
    @admin_notices = Admin::Notice.all
  end

  # GET /admin/notices/new
  def new
    @admin_notice = Admin::Notice.new
  end

  # GET /admin/notices/1/edit
  def edit
  end

  # POST /admin/notices
  def create
    @admin_notice = Admin::Notice.new(admin_notice_params)

    if @admin_notice.save
      redirect_to admin_notices_url, notice: 'Notice was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/notices/1
  def update
    if @admin_notice.update(admin_notice_params)
      redirect_to admin_notices_url, notice: 'Notice was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin/notices/1
  def destroy
    @admin_notice.destroy
    redirect_to admin_notices_url, notice: 'Notice was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_notice
      @admin_notice = Admin::Notice.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_notice_params
      params.require(:admin_notice).permit!
    end
end
