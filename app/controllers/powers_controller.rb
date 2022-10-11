class PowersController < ApplicationController
  

    rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity_response
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_response


    
    def index
        power = Power.all
        render json: power
    end

    def show
        power = find_power
        render json: power
    end

    def update
        power = find_power
        power.update!(power_params)
        render json: power, status: :accepted

    end


    private
    def find_power
        Power.find(params[:id])
    end

    def power_params
        params.permit(:name,:description)
    end

    def record_not_found_response

        render json: {error:"Record not found"},status: :not_found
    end

 
    def unprocessable_entity_response(invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
      end
end
