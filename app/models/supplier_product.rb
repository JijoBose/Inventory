class SupplierProduct
  include Mongoid::Document
  field :stock, type: Integer
  field :price, type: Float
  belongs_to :user
  belongs_to :product
end
