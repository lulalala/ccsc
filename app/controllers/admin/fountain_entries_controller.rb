class Admin::FountainEntriesController < ApplicationController
  before_action :set_admin_fountain
  before_action :set_admin_fountain_entry, only: [:edit, :update, :destroy]

  def index
    @admin_fountain_entries = @admin_fountain.fountain_entries.all
  end

  def new
    @admin_fountain_entry = @admin_fountain.fountain_entries.build
    @admin_fountain_entry.build_post
  end

  def edit
  end

  def create
    @admin_fountain_entry = @admin_fountain.fountain_entries.build(admin_fountain_entry_params)

    if @admin_fountain_entry.save
      redirect_to edit_admin_fountain_path(@admin_fountain), notice: 'Fountain entry was successfully created.'
    else
      render :new
    end
  end

  def update
    if @admin_fountain_entry.update(admin_fountain_entry_params)
      redirect_to edit_admin_fountain_path(@admin_fountain), notice: 'Fountain entry was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @admin_fountain_entry.destroy
    redirect_to edit_admin_fountain_path(@admin_fountain), notice: 'Fountain entry was successfully destroyed.'
  end

  private
    def set_admin_fountain
      @admin_fountain = Admin::Fountain.find(params[:fountain_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_admin_fountain_entry
      @admin_fountain_entry = Admin::FountainEntry.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def admin_fountain_entry_params
      params.require(:fountain_entry).permit([{post_attributes: [:title, :author, :body]}, :fountain_id])
    end
end
