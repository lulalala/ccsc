class CreateCultureEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :culture_entries do |t|
      t.references :post, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
