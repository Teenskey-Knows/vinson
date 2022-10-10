class PowersController < ApplicationController
    def show

        power = Power.all
        render json: power
    end

    def index
        power = find_power
        render json: power
    end


    private
    def find_power
        power = Power.find(params[:id])
    end
end
