class AddOrderAndCategoryToFountainEntries < ActiveRecord::Migration
  def change
    add_column :fountain_entries, :order, :integer, after: :post_id
    add_column :fountain_entries, :category, :string, after: :post_id
  end
end
