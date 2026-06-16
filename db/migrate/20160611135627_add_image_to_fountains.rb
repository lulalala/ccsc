class AddImageToFountains < ActiveRecord::Migration[5.0]
  def change
    add_column :fountains, :image, :string
  end
end
