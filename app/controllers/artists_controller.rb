class ArtistsController < ApplicationController
  def index
    @artist = Artist.all
  end
  def create
    @artist = Artist.new(artist_params)
	  @artist.save
	  redirect_to artist_path(@artist)
  end

  def update
  end

  def show
  end
end
