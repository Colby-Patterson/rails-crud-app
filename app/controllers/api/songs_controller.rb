class Api::SongsController < ApplicationController
  def index
    render json: Song.all
  end

  def show
    song = Song.find(params[:id])
    render json: song
  end

  def destroy
    song = Song.find(params[:id])
    song.destroy
    render json: {message: 'Song deleted'}
  end
end
