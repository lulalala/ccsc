class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.text :body
      t.references :group

      t.timestamps null: false
    end
  end
end
