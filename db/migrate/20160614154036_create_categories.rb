class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :parent_id, index: true
      t.string :scope

      t.timestamps null: false
    end
  end
end
