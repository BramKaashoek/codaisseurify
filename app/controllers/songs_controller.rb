class SongsController < ApplicationController
  before_action :set_song, only: [:show, :destroy]

  def show
  end

  def new
    @song = Song.new(artist: @artist)
  end

  def create
    @song = Song.new(song_params)
    # @song = @artist.songs.create(song_params)
    if @song.save
      redirect_to @artist
    else render :new
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
    params.require(:song).permit(:name, :album, :track_number, :year, :artist_id, :album_image_id)
  end
end
