class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :owner, polymorphic: true

  serialize :misc, Hash

  attr_accessor :fountain_id

  after_save :link_to_fountain

  def link_to_fountain
    if fountain_id
      FountainEntry.find_or_create_by(post_id:id, fountain_id:fountain_id)
    end
  end
end
