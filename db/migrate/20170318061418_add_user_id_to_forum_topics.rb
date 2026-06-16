class AddUserIdToForumTopics < ActiveRecord::Migration[5.0]
  def change
    add_column :forum_topics, :user_id, :integer
  end
end
