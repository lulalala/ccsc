class CreateCultureEntries < ActiveRecord::Migration
  def change
    create_table :culture_entries do |t|
      t.references :post, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
