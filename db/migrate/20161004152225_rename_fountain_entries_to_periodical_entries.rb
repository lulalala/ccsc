class RenameFountainEntriesToPeriodicalEntries < ActiveRecord::Migration[5.0]
  def change
    rename_table :fountain_entries, :periodical_entries
  end
end
