class Product < ApplicationRecord
before_save :titlecapitalize

  def titlecapitalize
  	self.title = self.title.capitalize
  end
  	
  def self.search(search)
	if search
	   where(["title LIKE ?","%#{search}%"])
	else
	  @products = Product.all
    end
  end  
end
