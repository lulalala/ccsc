class RenameFountainIdToPeriodicalId < ActiveRecord::Migration
  def change
    rename_column :periodical_entries, :fountain_id, :periodical_id
  end
end
