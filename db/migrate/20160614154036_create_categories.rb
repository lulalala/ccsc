class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :parent_id, index: true
      t.string :scope

      t.timestamps null: false
    end
  end
end
