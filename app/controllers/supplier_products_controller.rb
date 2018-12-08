class SupplierProductsController < ApplicationController
  before_action :set_supplier_product, only: [:show, :edit, :update, :destroy]

  # GET /supplier_products
  # GET /supplier_products.json
  def index
    @supplier_products = SupplierProduct.all
  end

  # GET /supplier_products/1
  # GET /supplier_products/1.json
  def show
  end

  # GET /supplier_products/new
  def new
    @supplier_product = SupplierProduct.new
  end

  # GET /supplier_products/1/edit
  def edit
  end

  # POST /supplier_products
  # POST /supplier_products.json
  def create
    @supplier_product = SupplierProduct.new(supplier_product_params)

    respond_to do |format|
      if @supplier_product.save
        format.html { redirect_to @supplier_product, notice: 'Supplier product was successfully created.' }
        format.json { render :show, status: :created, location: @supplier_product }
      else
        format.html { render :new }
        format.json { render json: @supplier_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supplier_products/1
  # PATCH/PUT /supplier_products/1.json
  def update
    respond_to do |format|
      if @supplier_product.update(supplier_product_params)
        format.html { redirect_to @supplier_product, notice: 'Supplier product was successfully updated.' }
        format.json { render :show, status: :ok, location: @supplier_product }
      else
        format.html { render :edit }
        format.json { render json: @supplier_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supplier_products/1
  # DELETE /supplier_products/1.json
  def destroy
    @supplier_product.destroy
    respond_to do |format|
      format.html { redirect_to supplier_products_url, notice: 'Supplier product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supplier_product
      @supplier_product = SupplierProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def supplier_product_params
      params.require(:supplier_product).permit(:user, :product, :stock, :price)
    end
end
