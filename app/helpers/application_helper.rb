module ApplicationHelper
  include ActsAsTaggableOn::TagsHelper

  def banner_tag(name)
    if banner = Banner.find_by(name: name)
      image_tag banner.image.url, class:'img-responsive'
    else
      nil
    end
  end

  def link_to_info(seo_name)
    info = Info.find_by(seo_name: seo_name)
    link_to info.title, info_path(seo_name: seo_name)
  end
end
