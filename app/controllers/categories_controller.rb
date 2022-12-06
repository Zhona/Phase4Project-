class CategoriesController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found 


    def show
        category = find_categories
        render json: category
    end

    def update 
        category = find_categories
        category.update!(:is3d)
        render json: category, status: :updated
    end

    private 
    
    def find_categories
        category = Category.find(paramas[:id])
    end

    def record_not_found 
        render json: { error: "Category not found" }, status: :not_found 
    end

    def render_unprocessable_entity(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

end
