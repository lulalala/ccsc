class RemovePostIdFromCultureEntries < ActiveRecord::Migration
  def change
    remove_column :culture_entries, :post_id
  end
end
