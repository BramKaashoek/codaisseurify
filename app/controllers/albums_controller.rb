class AlbumsController < ApplicationController
  before_action :set_artist, only: [:new, :create, :index]
  respond_to :html, :js
  skip_before_action :verify_authenticity_token

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(album_params.merge(artist_id: params[:artist_id]))
    if @album.save
      redirect_to artist_path(params[:artist_id])
    else
      render 'new'
    end
  end

  def index
    @albums = @artist.albums
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy
  end

  private
  def album_params
    params.require(:album).permit(:name, :year, :image, :artist_id)
  end

  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

end
