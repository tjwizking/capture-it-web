class ProductsController < ApplicationController
  #authorise_resource # Automatically set permissions per action
  before_action :set_product, only: [:show, :edit, :update, :destroy]
 # after_action :set_csrf_headers,only: :create

  # GET /products
  # GET /products.json
  def index
    @products = Product.all

  end

 def change_username
    #authorise! :change_username,User
 end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  def manage
     @products = Product.all
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        #format.json { render :show, status: :created, location: @product }
        UserMailer.welcome_email(@product).deliver
      else
        format.html { render :new }
        #format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.js { render :js => "ohSnap('Oh Snap! I cannot process your card...', 'red');" }
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end



  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:pid, :name, :item_type, :has_options, :size_type, :size, :has_color, :color, :in_stock, :stock_left, :price, :for_sex, :has_variant, :barcode_path, :image_path, :last_bought, :bought_times, :last_scanned, :scanned_times, :is_active, :ranking)
    end
end
