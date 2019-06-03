require 'rails_helper'

describe Product do

  let(:product) {
    Product.create!(name: "Product1", description: "This is the greatest hits of Johnny Blue", image_url: "/assets/images/vinyl_11.png")
  }

  let(:user) {User.create!(email: "test@test.com", password: "test456")}
  before do
    product.comments.create!(rating: 1, user: user, body: "Awfull album")
    product.comments.create!(rating: 3, user: user, body: "OK album")
    product.comments.create!(rating: 5, user: user, body: "Great album")
  end

  it "returns the average rating off all comments" do
    expect(product.average_rating).to eq 3
  end

  it "is not valid without a name" do
    expect(Product.new(description: "Cool album")).not_to be_valid
  end
end
