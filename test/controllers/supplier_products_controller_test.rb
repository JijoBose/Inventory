require 'test_helper'

class SupplierProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @supplier_product = supplier_products(:one)
  end

  test "should get index" do
    get supplier_products_url
    assert_response :success
  end

  test "should get new" do
    get new_supplier_product_url
    assert_response :success
  end

  test "should create supplier_product" do
    assert_difference('SupplierProduct.count') do
      post supplier_products_url, params: { supplier_product: { price: @supplier_product.price, product_id: @supplier_product.product_id, stock: @supplier_product.stock, user_id: @supplier_product.user_id } }
    end

    assert_redirected_to supplier_product_url(SupplierProduct.last)
  end

  test "should show supplier_product" do
    get supplier_product_url(@supplier_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_supplier_product_url(@supplier_product)
    assert_response :success
  end

  test "should update supplier_product" do
    patch supplier_product_url(@supplier_product), params: { supplier_product: { price: @supplier_product.price, product_id: @supplier_product.product_id, stock: @supplier_product.stock, user_id: @supplier_product.user_id } }
    assert_redirected_to supplier_product_url(@supplier_product)
  end

  test "should destroy supplier_product" do
    assert_difference('SupplierProduct.count', -1) do
      delete supplier_product_url(@supplier_product)
    end

    assert_redirected_to supplier_products_url
  end
end
