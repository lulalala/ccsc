class InfosController < ApplicationController
  def show
    @info = Info.find_by(seo_name: params[:seo_name])
  end
end
