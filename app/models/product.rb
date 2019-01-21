class Product < ApplicationRecord
  def self.search(search_term)
    Product.where("name LIKE ?", "%#{search_term}%")
    has_many :comments
  end

  def highest_rating_comment
    comments.rating_desc.first
    end
end
