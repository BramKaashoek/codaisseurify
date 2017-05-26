class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update, :destroy]

  def index
    @artists = Artist.all
    @artist_images = ArtistImage.all
  end

  def show
  end

  def new

  end

  def create
  end

  def edit
  end

  def update
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
    params.require(:artist).permit(:name, :genre, :country, :website)
  end
end
