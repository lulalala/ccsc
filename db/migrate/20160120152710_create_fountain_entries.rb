class CreateFountainEntries < ActiveRecord::Migration
  def change
    create_table :fountain_entries do |t|
      t.references :fountain, index: true, foreign_key: true
      t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
