class SongsController < ApplicationController
  before_action :set_song, only: [:show, :destroy]

  def show
  end

  def new
    @song = @artist.songs.build
  end

  def create
  end

  def destroy
    @song.destroy
    redirect_to @song.artist
  end

  private
  def set_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:name, :album, :track_number, :year, :artist_id, :album_image_id)
  end
end
