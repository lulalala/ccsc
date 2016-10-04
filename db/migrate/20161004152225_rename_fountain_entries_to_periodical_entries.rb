class RenameFountainEntriesToPeriodicalEntries < ActiveRecord::Migration
  def change
    rename_table :fountain_entries, :periodical_entries
  end
end
