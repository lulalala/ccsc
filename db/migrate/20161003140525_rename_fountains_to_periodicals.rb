class RenameFountainsToPeriodicals < ActiveRecord::Migration[5.0]
  def change
    rename_table :fountains, :periodicals
  end
end
