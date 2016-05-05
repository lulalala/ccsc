class AddOwnerToPosts < ActiveRecord::Migration
  def up
    add_column :posts, :owner_id, :integer, after: :user_id
    add_column :posts, :owner_type, :string, after: :user_id

    Post.reset_column_information

    FountainEntry.find_each do |f|
      f.post.update_attributes(
        owner_id: f.id,
        owner_type: "FountainEntry"
      )
    end
  end

  def down
    remove_column :posts, :owner_id
    remove_column :posts, :owner_type
  end
end
