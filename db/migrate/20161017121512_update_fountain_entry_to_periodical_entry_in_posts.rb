class UpdateFountainEntryToPeriodicalEntryInPosts < ActiveRecord::Migration
  def change
    Post.reset_column_information
    Post.where(owner_type: "FountainEntry").update_all(owner_type: "PeriodicalEntry")
    Post.reset_column_information
  end
end
