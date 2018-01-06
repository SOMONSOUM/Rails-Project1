class ProductsController < ApplicationController
    before_action :set_product, only: [:show, :update, :destroy, :edit] 
    def index
        @products=Product.all
    end

    def create
    @product=Product.new(product_params)
        if @product.save 
            redirect_to @product 
        else
            render :new 
        end

    end

    def new
        @product=Product.new 
    end
    
    def show

    end

    def edit

    end

    def update
      
        if @product.update(product_params)
            redirect_to @product
        else 
            render :edit
        end

    end

    def destroy
     
      @product.destroy
      redirect_to products_path
    end

    private
        def product_params
            params.require(:product).permit(:product_name, :product_qty, :con_product, :category_id)
        end

        def set_product
            @product=Product.find(params[:id])
        end
end
