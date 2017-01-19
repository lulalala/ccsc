class CreateCommentPosts < ActiveRecord::Migration
  def change
    create_table :comment_posts do |t|
      t.integer :topic_id
      t.string :author
      t.text :content
      t.text :content_html

      t.timestamps null: false
    end
    add_foreign_key :comment_posts, :comment_topics, column: :topic_id
  end
end
