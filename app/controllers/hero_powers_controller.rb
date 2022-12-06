class HeroPowersController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :record_invalid_hero_power
    def create
        @hero_power = HeroPower.create!(hero_power_params)
        render json: @hero_power, status: :created
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
        render json: {errors: invalid.record.errors.full_messages}, status: :unproccessable_entity
    end
end
