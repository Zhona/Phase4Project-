class ProductsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found 

    
    def index
        products = Product.all
        render json: products, status: :ok
    end 

    def show 
        product = find_product
        render json: product
    end 

    def create 
        product = Product.create!(product_params)
        render json: product, status: :created
    end 

    def update 
        product = find_product
        product.update!(product_params)
        render json: product, status: :updated
    end 

    def delete
        product = find_product
        product.destroy
        head :no_content 
    end 

    private 

    def find_product 
        product = Product.find(params[:id])
    end

    def product_params 
        params.permit(:name, :url, :price, :description)
    end

    def record_not_found 
        render json: { error: "Product not found" }, status: :not_found 
    end

    def render_unprocessable_entity(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
      end

 end
