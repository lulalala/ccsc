class Admin::CultureEntriesController < Admin::BaseController
  before_action :set_admin_culture_entry, only: [:edit, :update]

  def index
    @culture_entries = CultureEntry.page(params[:page])
  end

  def new
    @admin_culture_entry = CultureEntry.new
    @post = @admin_culture_entry.build_post
  end

  def create
    @admin_culture_entry = CultureEntry.new(admin_culture_entry_params)
    respond_to do |format|
      if  @admin_culture_entry.save
        format.html { redirect_to [:admin, CultureEntry] }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @admin_culture_entry.update(admin_culture_entry_params)
        format.html { redirect_to [:admin, CultureEntry], notice: 'Saved' }
      else
        format.html { render :edit }
      end
    end
  end

  private

  def set_admin_culture_entry
    @admin_culture_entry = CultureEntry.find(params[:id])
  end

  def admin_culture_entry_params
    params.require(:culture_entry).permit(:category_id, post_attributes: [:id, :title, :author, :body, :tag_list]) 
  end
end
