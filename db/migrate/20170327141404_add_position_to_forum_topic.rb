class AddPositionToForumTopic < ActiveRecord::Migration
  def change
    add_column :forum_topics, :position, :integer
  end
end
