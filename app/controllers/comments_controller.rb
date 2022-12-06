class CommentsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found 

    def index 
        comment = Comment.all
        render json: comment, status: :ok 
    end 

    def show 
        comment = find_comment
        render json: comment
    end 

    def create 
        comment.create!(comment_params)
        render json: comment, status: :created
    end 

    def delete 
        comment = find_comment
        comment.destroy
        head :no_content 
    end 


    private 

    def find_comment
    comment = Comment.find(params[:id])
    end

    def comment_params 
        params.permit(:comments)
    end

    def record_not_found 
        render json: { error: "Comment not found" }, status: :not_found 
    end

    def render_unprocessable_entity(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end



    end
