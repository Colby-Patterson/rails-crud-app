class Api::SongsController < ApplicationController
  before_action :set_song, only: [:update]
  def index
    render json: Song.all
  end

  def show
    song = Song.find(params[:id])
    render json: song
  end

  def create
    song = Song.new(song_params)
    if(song.save)
      render json: song
    end
  end

  def update
    if @song.update(song_params)
      render json: @song
    else
      # render json: {errors: item.errors.full_messages}, status 422
    end
  end

  def destroy
    song = Song.find(params[:id])
    song.destroy
    render json: {message: 'Song deleted'}
  end

  private

  def set_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:song_name, :artist)
  end
end
