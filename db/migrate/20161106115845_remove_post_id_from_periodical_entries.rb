class RemovePostIdFromPeriodicalEntries < ActiveRecord::Migration
  def change
    remove_column :periodical_entries, :post_id
  end
end
