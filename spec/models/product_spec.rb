require "rails_helper"

RSpec.describe Product, type: :model do
    before do 
        @user = User.create(email:"rahulgupta@gmail.com",password:"34fjhc",password_confirmation:"34fjhc")
        @product = @user.products.create(product_name:"news",price:2300,description:"this is product")
    end

    it "is valid with attribute" do
        @product.product_name = nil
        expect(@product).to_not be_valid
    end

    

end

