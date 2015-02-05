class CartsController < ApplicationController
  before_action :set_cart, only: [:show, :edit, :update, :destroy]
  include Cart::CartOps

  def index
    @carts = Cart.all
  end

  def show
  end

  def new
      
      AddToCart params[:prod_id]
      #@cart = Cart.new(cart_params)
      #@cart.save
      
      respond_to do |format|
        format.html { redirect_to products_url, notice: 'Product Added to Cart.' }
        #format.json { head :no_content }
        format.js
      end
  end

  def edit
    
  end

  def create
    @cart = Cart.new(cart_params)
    @cart.save
  end

  def update
    @cart.update(cart_params)
  end

  def destroy
    @cart.destroy
  end

  def checkout
     @carti = getCartItems
  end


  def cancel_sale
    cancelSale
    respond_to do |format|
    format.html { redirect_to products_url, notice:  "Sale Cancelled" }
    format.json { head :no_content }
    end

  end

  def close_sale
    closeSale #function in model
    respond_to do |format|
    format.html { redirect_to products_url, notice:  "Sale closed" }
    format.json { head :no_content }
    end
  end

  private
    def set_cart
      @cart = Cart.find(params[:id])
    end

    def cart_params
      params.require(:cart).permit(:product_id, :quantity, :session_id, :user_id)
    end
end
