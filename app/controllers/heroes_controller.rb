class HeroesController < ApplicationController

    def index
        hero = Hero.all 
        render json: hero, status: :ok
    end

    def show
        hero = Hero.find_by(id: params[:id])
        render json: hero, status: :ok
    end
end
