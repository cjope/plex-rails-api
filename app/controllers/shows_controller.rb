class ShowsController < ApplicationController

    def index
        tv = Show.all
        render json: tv
    end

    def show
        tv = find_tv
        render json: tv
    end

    def update
        tv = find_tv
        tv.update(tv_params)
        render json: tv
    end

    def destroy
        tv = Show.find(find_tv)
        tv.destroy
        head :no_content
    end


    private
    def tv_params
        params.permit(:name)
    end

    def find_tv
        tv = Show.find(params[:id])
    end

end
