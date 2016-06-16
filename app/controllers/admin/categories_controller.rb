class Admin::CategoriesController < Admin::BaseController
  def index
    @categories = Category.where(parent_id: nil).order(:scope, :id).all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.create(category_params)
    if @category
      redirect_to admin_categories_path
    else
      render :new
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(category_params)
      redirect_to admin_categories_path
    else
      render :edit
    end
  end

  private

  def category_params
    params.require(:category).permit(:name, :scope, :parent_id)
  end
end
