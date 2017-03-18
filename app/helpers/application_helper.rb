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
    link_to info.try(:title), info_path(seo_name: seo_name)
  end

  def render_page_classes
    classes = [ params[:controller].tr('/','_'), params[:action] ]
    if @page_classes
      classes.concat(@page_classes)
    end
    classes.join(' ')
  end
end
