module CustomUrlHelper
  def admin_periodicals_path(options = {})
    url_for([:admin, params[:type].underscore.pluralize])
  end

  def new_admin_periodical_path(options = {})
    url_for([:new, :admin, params[:type].underscore])
  end

  def edit_admin_periodical_path(record)
    url_for([:edit, :admin, record])
  end

  def admin_periodical_path(record)
    url_for([:admin, record])
  end
end

Rails.application.routes.named_routes.url_helpers_module.send(:include, CustomUrlHelper)
