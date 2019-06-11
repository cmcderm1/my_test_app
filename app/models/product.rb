class Product < ApplicationRecord
    has_many :orders
    has_many :comments
    validates :name, presence: true
    validates :description, presence: true

  def self.search(search_term)
    Product.where("name LIKE ?", "%#{search_term}%")
  end

  def views
   	$redis.get("product:#{id}")
   end

   def viewed
   	$redis.incr("product:#{id}")
   end

   def set_recent_reviewer(user_name)
   	$redis.set("rr_product:#{id}","#{user_name}")
   end

   def get_recent_reviewer
   	$redis.get("rr_product:#{id}")
   end

 	def highest_rating_comment
 		comments.rating_desc.first
 	end

  def highest_rating_comment
     comments.rating_desc.first
end

  def lowest_rating_comment
     comments.rating_asc.first
  end
  def average_rating
    comments.average(:rating).to_f
  end
end
