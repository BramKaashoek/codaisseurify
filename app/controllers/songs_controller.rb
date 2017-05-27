class SongsController < ApplicationController
  before_action :set_song, only: [:show, :destroy]

  def show
  end

  def new
    @artist = Artist.find(params[:artist_id])
    @song = Song.new()
  end

  def create
    @song = Song.create(song_params)
    if Song.exists?(@song.id)
    redirect_to artist_path(params[:artist_id])
  else
    render 'new'
  end

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
    params.require(:song).permit(:name, :album_id, :track_number, :artist_id)
  end
end
