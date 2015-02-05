require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { barcode_path: @product.barcode_path, bought_times: @product.bought_times, color: @product.color, for_sex: @product.for_sex, has_color: @product.has_color, has_options: @product.has_options, has_variant: @product.has_variant, image_path: @product.image_path, in_stock: @product.in_stock, is_active: @product.is_active, item_type: @product.item_type, last_bought: @product.last_bought, last_scanned: @product.last_scanned, name: @product.name, pid: @product.pid, price: @product.price, ranking: @product.ranking, scanned_times: @product.scanned_times, size: @product.size, size_type: @product.size_type, stock_left: @product.stock_left }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: { barcode_path: @product.barcode_path, bought_times: @product.bought_times, color: @product.color, for_sex: @product.for_sex, has_color: @product.has_color, has_options: @product.has_options, has_variant: @product.has_variant, image_path: @product.image_path, in_stock: @product.in_stock, is_active: @product.is_active, item_type: @product.item_type, last_bought: @product.last_bought, last_scanned: @product.last_scanned, name: @product.name, pid: @product.pid, price: @product.price, ranking: @product.ranking, scanned_times: @product.scanned_times, size: @product.size, size_type: @product.size_type, stock_left: @product.stock_left }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
