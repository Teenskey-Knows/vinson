class HeroPowersController < ApplicationController

    def create
        heroPower = HeroPower.create!(hero_power_params)
        render json: heroPower, status: :created
   
    end

    private
    def hero_power_params
        params.permit(:strength,:Power_id,:Hero_id)
    end
end
