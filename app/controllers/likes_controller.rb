class LikesController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found 



    def show
        like = find_likes 
        render json: like
    end

    def update
        like = find_likes 
        like.update!(:liked)
        render json: like
    end



    private 

    def find_like 
        like = Like.find(params[:id])
    end

    def record_not_found 
        render json: { error: "Likes not found" }, status: :not_found 
    end

    def render_unprocessable_entity(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
    
end
