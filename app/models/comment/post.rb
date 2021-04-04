require 'comment'

module Comment
  class Post < ApplicationRecord
    belongs_to :topic, inverse_of: :posts, class_name: "Comment::Topic"

    auto_html_for :content do
      html_escape
      youtube
      link :target => "_blank", :rel => "nofollow"
      simple_format
    end

    validate :validate_content

    nilify_blanks

    VALID_OWNER_CLASSES = [Post]

    def self.find_owner(klass, id)
      klass = klass.constantize
      raise if VALID_OWNER_CLASSES.include?(klass)

      klass.find(id)
    end

    private

    def validate_content
      if content.blank? && content_html.blank?
        errors.add(:content, :blank)
      end
    end
  end
end
