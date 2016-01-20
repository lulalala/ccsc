class CreateFountains < ActiveRecord::Migration
  def change
    create_table :fountains do |t|
      t.integer :issue
      t.string :title

      t.timestamps null: false
    end
  end
end
