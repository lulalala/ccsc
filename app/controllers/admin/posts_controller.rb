class Admin::PostsController < Admin::BaseController
  before_action :set_admin_post, only: [:show, :edit, :update, :destroy]

  # GET /admin/posts
  def index
    @admin_posts = Admin::Post.page(params[:page])
  end

  # GET /admin/posts/new
  def new
    @admin_post = Admin::Post.new
  end

  # GET /admin/posts/1/edit
  def edit
  end

  # POST /admin/posts
  def create
    @admin_post = Admin::Post.new(admin_post_params)

    respond_to do |format|
      if @admin_post.save
        format.html { redirect_to admin_fountains_path, notice: 'Post was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /admin/posts/1
  def update
    respond_to do |format|
      if @admin_post.update(admin_post_params)
        format.html { redirect_to admin_fountains_path, notice: 'Post was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /admin/posts/1
  def destroy
    @admin_post.destroy
    respond_to do |format|
      format.html { redirect_to admin_posts_url, notice: 'Post was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_post
      @admin_post = Admin::Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_post_params
      params.require(:admin_post).permit(:title, :author, :body, :fountain_id, :tag_list)
    end
end
