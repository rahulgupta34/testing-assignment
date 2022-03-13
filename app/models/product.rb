class Product < ApplicationRecord
   belongs_to :user

   validates :product_name, :price, presence: true
   # validates_uniqueness_of :product_name

end
