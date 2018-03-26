class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def create
    @genre = Genre.new(artist_params)
	  @genre.save
	  redirect_to genre_path(@genre)
  end


  def edit
    @artist = Artist.find(params[:id])
  end

  def show
    @artist = Artist.find(params[:id])
  end

    def update
      @artist = Artist.find(params[:id])
  	  @artist.update(artist_params)
  	  redirect_to artist_path(@artist)
    end

    private

    def genre_params
			params.require(:artist).permit(:name, :bio)
		end
end
