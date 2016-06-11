class AddImageToFountains < ActiveRecord::Migration
  def change
    add_column :fountains, :image, :string
  end
end
