class HeroPowersController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :record_invalid_hero_power
    def create
        @hero_power = HeroPower.create!(hero_power_params)
        # byebug
        render json: @hero_power.hero, status: :created
    end

    def index
        @hero_power = HeroPower.all
        render json: @hero_power, status: :ok
    end

    private

    def hero_power_params
        params.permit(:strength, :hero_id, :power_id)
    end

    def record_invalid_hero_power(invalid)
        render json: {errors: ["validation errors"]}, status: :unprocessable_entity
    end
end
