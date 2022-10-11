class HeroPowersController < ApplicationController

    rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity_response


    def index
        heroPower = HeroPower.all
        render json: heroPower
    end

    def create
        heroPower = HeroPower.create!(hero_power_params)
        render json: heroPower, status: :created
   
    end

    private
    def hero_power_params
        params.permit(:strength,:power_id,:hero_id)
    end



    def unprocessable_entity_response(invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
      end
end
