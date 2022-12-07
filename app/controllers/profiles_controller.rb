class ProfilesController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found 

    def index 
        profiles = Profile.all 
        render json: profiles 
    end 

    def show 
        profile = find_profile
        render json: profile, serializer: ProfileSerializer
    end 

    def create 
        profile = Profile.create!(profile_params)
        render json: profile, status: :created 
    end

    def update
    profile = find_profile
    profile.update!(profile_params)
    render json: profile
    end

    def destroy
        profile = find_profile
        profile.destroy
        head :no_content 
    end

    private 

    def profile_params 
        params.permit(:user_id, :first_name, :Last_name, :email, :password_digest)
    end

    def find_profile 
        profile = Profile.find(params[:id])
    end

    def record_not_found 
        render json: { error: "Profile not found" }, status: :not_found 
    end

    def render_unprocessable_entity(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
