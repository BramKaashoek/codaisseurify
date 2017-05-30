class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :destroy]

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

  private
  def set_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name, :genre, :image, :country, :website)
  end
end
