class AddOwnerToPosts < ActiveRecord::Migration[5.0]
  def up
    add_column :posts, :owner_id, :integer, after: :user_id
    add_column :posts, :owner_type, :string, after: :user_id

  end

  def down
    remove_column :posts, :owner_id
    remove_column :posts, :owner_type
  end
end
