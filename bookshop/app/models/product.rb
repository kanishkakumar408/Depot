class Product < ApplicationRecord

  def self.search(search)
	if search
	   where(["title LIKE ?","%#{search}%"])
	else
	  @products = Product.all
    end
  end  
end
