class AlbumsController < ApplicationController
  def index
    @albums = flickr_user.sets
  end

  def show
    @album = Flickr.sets.find(params[:id])
    @album.get_info!

    @photos = @album.photos(size:true)
    @photos.each(&:get_info!)
  end

  private

  def flickr_user
    @flickr_user ||= Flickr.people.find(AppConfig.flickr.user_id)
  end
end
