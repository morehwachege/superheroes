class PowersController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :record_invalid_power
    def index
        @power = Power.all
        render json: @power, status: :ok
    end

    def show
        @power = Power.find_by(id: params[:id])
        if @power
            render json: @power, status: :ok
        else
            render json: {error: "Power not found"}, status: :not_found
        end
    end

    def update
        # byebug
        @power = Power.find_by(id: params[:id])
        @power.update!(power_params)
        render json: @power, status: :accepted
    end

    private

    def power_params
        params.permit(:description)
    end

    def record_invalid_power(invalid)
        # render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
        render json: {errors: ["validation errors"]}, status: :unprocessable_entity

    end
end
