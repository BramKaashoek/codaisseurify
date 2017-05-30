class AlbumsController < ApplicationController

  def new
    @album = Album.new
    @artist = Artist.find(params[:artist_id])
  end

  def create
    @artist = Artist.find(params[:artist_id])
    @album = Album.new(album_params.merge(artist_id: params[:artist_id]))
    if @album.save
      redirect_to artist_albums_path(params[:artist_id])
    else
      render :new
    end
  end

  def index
    @artist = Artist.find(params[:artist_id])
    @albums = @artist.albums
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    redirect_to artist_albums_path
  end

  private
  def album_params
    params.require(:album).permit(:name, :year, :image, :artist_id)
  end
end
