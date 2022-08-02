class MoviesController < ApplicationController


    def index
        movie = Movie.all
        render json: movie
    end

    def show
        movie = find_movie
        render json: movie
    end

    def update
        movie = find_movie
        movie.update(movie_params)
        render json: movie
    end

    def destroy
        movie = Show.find(find_movie)
        movie.destroy
        head :no_content
    end


    private
    def movie_params
        params.permit(:title)
    end

    def find_movie
        movie = Movie.find(params[:id])
    end



end
