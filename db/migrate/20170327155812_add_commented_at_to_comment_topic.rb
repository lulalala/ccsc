class AddCommentedAtToCommentTopic < ActiveRecord::Migration
  def change
    add_column :comment_topics, :commented_at, :datetime
    Comment::Topic.find_each do |ct|
      if p = ct.posts.last
        ct.commented_at = p.created_at
        ct.save
      end
    end
  end
end
