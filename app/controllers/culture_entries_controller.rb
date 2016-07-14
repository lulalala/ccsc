class CultureEntriesController < ApplicationController
  def index
    @culture_entries_yi = CultureEntry.where(category: '宗旨')
    @culture_entries_story = CultureEntry.where(category: '小故事小道理')
    @culture_entries_essay = CultureEntry.where(category: '論文')
    tag_cloud
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
