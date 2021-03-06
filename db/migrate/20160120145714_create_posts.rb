class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :author
      t.references :user, index: true, foreign_key: true
      t.text :misc

      t.timestamps null: false
    end
  end
end
