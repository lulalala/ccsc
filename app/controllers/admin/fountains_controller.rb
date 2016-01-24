class Admin::FountainsController < Admin::BaseController
  before_action :set_admin_fountain, only: [:edit, :update, :destroy]

  # GET /admin/fountains
  def index
    @admin_fountains = Admin::Fountain.order(id: :desc).page(params[:page])
  end

  # GET /admin/fountains/new
  def new
    @admin_fountain = Admin::Fountain.new
  end

  # GET /admin/fountains/1/edit
  def edit
  end

  # POST /admin/fountains
  def create
    @admin_fountain = Admin::Fountain.new(admin_fountain_params)

    respond_to do |format|
      if @admin_fountain.save
        format.html { redirect_to @admin_fountain, notice: 'Fountain was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /admin/fountains/1
  def update
    respond_to do |format|
      if @admin_fountain.update(admin_fountain_params)
        format.html { redirect_to @admin_fountain, notice: 'Fountain was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /admin/fountains/1
  def destroy
    @admin_fountain.destroy
    respond_to do |format|
      format.html { redirect_to admin_fountains_url, notice: 'Fountain was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_fountain
      @admin_fountain = Admin::Fountain.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_fountain_params
      params.require(:admin_fountain).permit!
    end
end
