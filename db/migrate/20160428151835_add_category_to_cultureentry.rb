class AddCategoryToCultureentry < ActiveRecord::Migration[5.0]
  def change
    add_column :culture_entries, :category, :string
  end
end
