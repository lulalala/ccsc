class CreateBanners < ActiveRecord::Migration[5.0]
  def change
    create_table :banners do |t|
      t.string :name
      t.string :image

      t.timestamps null: false
    end
  end
end
