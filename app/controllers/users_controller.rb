class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found 

    def index 
        users = User.all 
        render json: users 
    end 

    def show 
        user = find_user
        render json: user, serializer: UserSerializer
    end

    def create 
        user = User.create!(user_params)
        @token = encode_token(user_id: user.id)
         render json: {
            user: UserSerializer.new(user),
            token: @token
        }, status: :created
    end

    def me
        render json: current_user, status: :ok
    end 

    def update 
        user = find_user
        user.update!(user_params)
        render json: user 
    end

    def destroy
        user = find_user
        user.destroy
        head :no_content
    end

    private 

    def find_user
        user = User.find(params[:id])
    end

    def user_params 
        params.permit(:username, :avatar, :email, :password)
    end

    def record_not_found 
        render json: { error: "User not found" }, status: :not_found 
    end

    def render_unprocessable_entity(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
      end
end
