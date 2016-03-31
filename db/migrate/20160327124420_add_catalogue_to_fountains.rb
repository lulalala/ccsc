class AddCatalogueToFountains < ActiveRecord::Migration
  def change
    add_column :fountains, :catalogue, :text
  end
end
