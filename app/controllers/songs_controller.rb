class SongsController < ApplicationController
  before_action :set_song, only: [:destroy]

  def new
    @song = Song.new
    @artist = Artist.find(params[:artist_id])

  end

  def create
    @artist = Artist.find(params[:artist_id])
    @song = Song.new(song_params.merge(artist_id: params[:artist_id]))

    if @song.save
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
