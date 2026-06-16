class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.text :body
      t.references :group

      t.timestamps null: false
    end
  end
end
