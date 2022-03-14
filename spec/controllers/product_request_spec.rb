require 'rails_helper'

RSpec.describe Product, type: :request do
  
  before do
    @user = FactoryBot.create(:user)
    sign_in @user
  end
  
  it "has to get all products" do
    get products_path
    expect(response).to be_successful
  end

  it "has to create new product" do
    product = FactoryBot.create(:product)
    get new_product_path(product)
    expect(response).to be_successful
  end
  
  it "has to show particular prduct" do
    product = FactoryBot.create(:product)
    get product_path(product)
    expect(response).to be_successful
  end

  it "has to edit particular product" do
    product = FactoryBot.create(:product)
    get edit_product_path(product)
    expect(response).to be_successful
  end

  it "should delete" do
    product = FactoryBot.create(:product)
    product.destroy
    expect(Product.find_by(product_name:"rahul")).to be_nil
  end

end

