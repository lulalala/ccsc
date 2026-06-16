class RemovePostIdFromPeriodicalEntries < ActiveRecord::Migration[5.0]
  def change
    remove_column :periodical_entries, :post_id
  end
end
