module Comment
  class Post < ActiveRecord::Base
    belongs_to :topic, inverse_of: :posts, class_name: "Comment::Topic"

    auto_html_for :content do
      html_escape
      youtube
      link :target => "_blank", :rel => "nofollow"
      simple_format
    end

    validates :content, presence: true

    nilify_blanks

    VALID_OWNER_CLASSES = [Post]

    def self.find_owner(klass, id)
      klass = klass.constantize
      raise if VALID_OWNER_CLASSES.include?(klass)

      klass.find(id)
    end
  end
end
