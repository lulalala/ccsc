class AddCatalogueToFountains < ActiveRecord::Migration[5.0]
  def change
    add_column :fountains, :catalogue, :text
  end
end
