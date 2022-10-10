class HerosController < ApplicationController

    rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity_response
rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_response


    def index
        hero = Hero.all
        render json: hero
      end
      
      def show
        hero = find_hero
        render json: hero
      end
    
      private
      def find_hero
        hero = Hero.find(params[:id])
      end

      def record_not_found_response
        render json: {error: "Record not found"},status: :not_found
      end

      def unprocessable_entity_response(invalid)
        render json: {errors.invalid.records.full_messages}, status: :unprocessable_entity
      end
end
