class RemovePostIdFromCultureEntries < ActiveRecord::Migration[5.0]
  def change
    remove_column :culture_entries, :post_id
  end
end
