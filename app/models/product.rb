class Product < ApplicationRecord
    belongs_to :category
    validates :product_name, presence: true
end
