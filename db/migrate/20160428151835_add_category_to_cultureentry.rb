class AddCategoryToCultureentry < ActiveRecord::Migration
  def change
    add_column :culture_entries, :category, :string
  end
end
