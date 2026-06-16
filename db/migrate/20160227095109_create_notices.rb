class CreateNotices < ActiveRecord::Migration[5.0]
  def change
    create_table :notices, comment:'新聞訊息' do |t|
      t.references :group
      t.string :title, comment:'標題'
      t.text :body, comment:'內文'

      t.timestamps null: false
    end
  end
end
