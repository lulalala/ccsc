class AddCategoryIdToCultureEntries < ActiveRecord::Migration
  def up
    remove_column :culture_entries, :category
    add_reference :culture_entries, :category, index: true, foreign_key: true
  end

  def down
    remove_reference :culture_entries, :category
    add_column :culture_entries, :category, :string
  end
end
