class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.string :seo_name
      t.string :title
      t.text :body

      t.timestamps null: false
    end
    add_index :infos, :seo_name
  end
end
