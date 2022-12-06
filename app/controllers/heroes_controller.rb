class HeroesController < ApplicationController

    def index
        hero = Hero.all 
        render json: hero, status: :ok
    end
end
