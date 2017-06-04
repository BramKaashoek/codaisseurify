class SongsController < ApplicationController
  before_action :set_artist, only: [:new, :create]
  before_action :set_album, only: [:new, :create]
  before_action :set_song, only: [:destroy]

  respond_to :html, :js

  def new
    @song = Song.new
    set_artist
    set_album
  end

  def create
    set_artist
    set_album
    @song = Song.new(song_params.merge(album_id: params[:album_id]))
    if @song.save
      redirect_to artist_path(params[:artist_id])
    else
      render 'new'
    end
  end

  def destroy
    @song.destroy
    respond_to do |format|
      format.html
      format.js
    end
  end

  private
  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

  def set_album
    @album = Album.find(params[:album_id])
  end

  def set_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:name, :track_number, :artist_id, :album_id)
  end
end
