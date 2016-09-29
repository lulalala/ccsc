class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :owner, polymorphic: true
  acts_as_taggable

  serialize :misc, Hash

  attr_accessor :fountain_id

  after_save :link_to_fountain
  before_save :set_special_tags

  validates :title, presence:true

  def link_to_fountain
    if fountain_id
      FountainEntry.find_or_create_by(post_id:id, fountain_id:fountain_id)
    end
  end

  def set_special_tags
    set_tag_list_on("#{owner.class.name.underscore}_tags", tag_list)
  end
end
