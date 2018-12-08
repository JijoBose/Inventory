class Product
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  field :mrp, type: Float
  has_many :supplier_products
end
