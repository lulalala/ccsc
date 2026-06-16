class AddPositionToForumTopic < ActiveRecord::Migration[5.0]
  def change
    add_column :forum_topics, :position, :integer
  end
end
