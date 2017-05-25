class SongsController < ApplicationController
  class songsController < ApplicationController
    before_action :set_song, only: [:show, :destroy]

    def show
    end

    def new
    end

    def create
    end

    def destroy
    end

    private
    def set_song
      @song = song.find(params[:id])
    end

    def song_params
      params.require(:song).permit(:name, :album, :track_number, :year, :artist_id, :album_image_id)
    end
  end

end
