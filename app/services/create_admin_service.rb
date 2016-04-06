class CreateAdminService
  def call
    user = User.find_or_create_by!(email: AppConfig.admin.email) do |user|
      user.password = AppConfig.admin.password
      user.password_confirmation = AppConfig.admin.password
      user.confirm!
    end
  end
end
