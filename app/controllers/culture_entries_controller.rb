class CultureEntriesController < ApplicationController
  def index
    @category_intro = Category.find_by name:'宗旨'
    @category_story = Category.find_by name:'小故事小道理'
    @category_essay = Category.find_by name:'論文'
  end

  def show
    @culture_entry = CultureEntry.find(params[:id])
  end

  def tag
    @tag = params[:tag]
    posts = Post.tagged_with(@tag, on: :culture_entry_tags)
    @culture_entries = posts.map(&:owner)
  end

  def category
    @category = Category.where(scope: "文化福傳").find_by!(name:params[:category])

    @entries = CultureEntry.where(category: @category)
  end

  private

  def tag_cloud
    @tags = Post.tag_counts_on(:culture_entry_tags)
  end
end
