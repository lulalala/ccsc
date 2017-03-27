class AddCommentedAtToCommentTopic < ActiveRecord::Migration
  def change
    add_column :comment_topics, :commented_at, :datetime
    Comment::Topic.all.each do |ct|
      ct.commented_at = ct.posts.last.created_at
      ct.save
    end
  end
end
