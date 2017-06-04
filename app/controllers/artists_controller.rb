class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :destroy]
  helper_method :delete_all_songs

  def index
    @artists = Artist.all
    if params[:order].in? %w[name ceated_at]
      @artists.merge!(Artist.order("#{params[:order]} #{params[:direction]}"))
    end
  end

  def show
    @songs = @artist.songs.order(:album_id, :track_number)
  end

  def destroy
    @artist.destroy
    redirect_to root_path
  end

  def delete_all_songs()
    Artist.find(params[:id]).albums.map {|album| album.songs.delete_all }
    respond_to do |format|
      format.html { redirect_to artist_url }
      format.js
    end
  end

  private
  def set_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name, :genre, :image, :country, :website)
  end
end
