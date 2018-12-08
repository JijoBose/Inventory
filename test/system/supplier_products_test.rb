require "application_system_test_case"

class SupplierProductsTest < ApplicationSystemTestCase
  setup do
    @supplier_product = supplier_products(:one)
  end

  test "visiting the index" do
    visit supplier_products_url
    assert_selector "h1", text: "Supplier Products"
  end

  test "creating a Supplier product" do
    visit supplier_products_url
    click_on "New Supplier Product"

    fill_in "Price", with: @supplier_product.price
    fill_in "Product", with: @supplier_product.product_id
    fill_in "Stock", with: @supplier_product.stock
    fill_in "User", with: @supplier_product.user_id
    click_on "Create Supplier product"

    assert_text "Supplier product was successfully created"
    click_on "Back"
  end

  test "updating a Supplier product" do
    visit supplier_products_url
    click_on "Edit", match: :first

    fill_in "Price", with: @supplier_product.price
    fill_in "Product", with: @supplier_product.product_id
    fill_in "Stock", with: @supplier_product.stock
    fill_in "User", with: @supplier_product.user_id
    click_on "Update Supplier product"

    assert_text "Supplier product was successfully updated"
    click_on "Back"
  end

  test "destroying a Supplier product" do
    visit supplier_products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Supplier product was successfully destroyed"
  end
end
