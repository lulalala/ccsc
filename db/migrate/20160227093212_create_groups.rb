class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups, comment:'內部團體' do |t|
      t.string :name, comment:'名稱'

      t.timestamps null: false
    end
  end
end
