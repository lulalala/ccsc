class RenameFountainIdToPeriodicalId < ActiveRecord::Migration[5.0]
  def change
    rename_column :periodical_entries, :fountain_id, :periodical_id
  end
end
