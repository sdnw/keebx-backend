class CartsController < ApplicationController
    def index 
        render json: Cart.all 
    end
    
    def show
        cart = Cart.find_by(id: params[:id])
        if cart
            render json: cart
        else
            render_not_found_response
        end
    end
end
