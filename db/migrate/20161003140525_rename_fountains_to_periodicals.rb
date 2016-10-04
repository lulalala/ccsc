class RenameFountainsToPeriodicals < ActiveRecord::Migration
  def change
    rename_table :fountains, :periodicals
  end
end
