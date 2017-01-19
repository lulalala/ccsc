class CreateCommentTopics < ActiveRecord::Migration
  def change
    create_table :comment_topics do |t|
      t.references :owner, polymorphic: true, index:true
      t.timestamps null: false
    end
  end
end
