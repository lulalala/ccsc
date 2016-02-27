class Admin::GroupsController < Admin::BaseController
  before_action :set_admin_group, only: [:show, :edit, :update, :destroy]

  # GET /admin/groups
  def index
    @admin_groups = Admin::Group.all
  end

  # GET /admin/groups/new
  def new
    @admin_group = Admin::Group.new
  end

  # GET /admin/groups/1/edit
  def edit
  end

  # POST /admin/groups
  def create
    @admin_group = Admin::Group.new(admin_group_params)

    if @admin_group.save
      redirect_to @admin_group, notice: 'Group was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/groups/1
  def update
    if @admin_group.update(admin_group_params)
      redirect_to @admin_group, notice: 'Group was successfully updated.'
    else
      render :edit
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_group
      @admin_group = Admin::Group.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_group_params
      params.require(:admin_group).permit!
    end
end
