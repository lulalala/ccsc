class AddPositionToForumTopic < ActiveRecord::Migration
  def change
    add_column :forum_topics, :position, :integer
    Forum::Board.all.each do |b|
      b.topics.each_with_index do |t,i|
        t.position = i
        t.save
      end
    end
  end
end
