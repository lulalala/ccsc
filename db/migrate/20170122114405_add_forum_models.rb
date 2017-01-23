class AddForumModels < ActiveRecord::Migration
  def change
    create_table :forum_boards do |t|
      t.string :name
      t.text :config
      t.integer :order
      t.timestamps null: false
    end

    create_table :forum_topics do |t|
      t.string :title
      t.boolean :sticky
      t.references :board, index:true
      t.timestamps null: false
    end
  end
end
