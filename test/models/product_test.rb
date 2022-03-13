require "test_helper"

class ProductTest < ActiveSupport::TestCase

  def setup
    @user = User.create(email:"rahulgupta@gmail.com",password:"34fjhc",password_confirmation:"34fjhc")
    @product = @user.products.build(product_name:"news",price:2300,description:"this is product")
  end

 
  test "product should be present " do
      @product.product_name = " "
      assert_not @product.valid?
  end



end
