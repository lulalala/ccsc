module ApplicationHelper
  include ActsAsTaggableOn::TagsHelper

  def banner_tag(name)
    if banner = Banner.find_by(name: name)
      image_tag banner.image.url, class:'img-responsive'
    else
      nil
    end
  end
end
