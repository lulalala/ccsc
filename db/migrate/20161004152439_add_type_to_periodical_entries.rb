class AddTypeToPeriodicalEntries < ActiveRecord::Migration
  def change
    add_column :periodical_entries, :type, :string, after: :id
    PeriodicalEntry.reset_column_information
    PeriodicalEntry.update_all(type: "FountainEntry")
    PeriodicalEntry.reset_column_information
  end
end
