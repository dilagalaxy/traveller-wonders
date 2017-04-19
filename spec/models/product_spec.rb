require 'rails_helper'

describe Product do
  before do
  	@product = Product.create!(:name => "Osprey Atmos 65 AG Pack", :description => " The foundation of the Osprey Atmos AG™ 65 is Osprey’s Anti-Gravity™ suspension system that delivers outstanding ventilation and carrying comfort. This award winning pack has earned a solid reputation with savvy thru-hikers on the Pacific Crest Trail. ", :image_url => "https://www.ospreypacks.com/images/product/series/features/Aura_S15_Detail_StowOnTheGo-min.jpg", :colour => "Greenish Blue ", :price => "$346.00 ")
    @user = User.create!(email: "testRSPEC@gmail.com", password:"test23")
    @product.comments.create!(rating: 1, user: @user, body: "Terrible..")
    @product.comments.create!(rating: 3, user: @user, body: "Fine.")
    @product.comments.create!(rating: 5, user: @user, body: "Amazing!")
 end

it "returns the average rating of all comments" do
     expect(@product.average_rating).to eq 3
   end

  it "is not valid" do
     expect(Product.new(description: "Nice product")).not_to be_valid
   end
 end
 
