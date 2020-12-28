class ProductsController < ApplicationController
  def index
  	@products = Product.search(params[:search])
  end

  def create
  	@product = Product.new(product_params)
  	if @product.save
  		redirect_to @product, notice: "products was successfully created"
  	else 
  	  render :new
    end
  end
  
  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to @products, notice: "product was updated successfully created"
    else
      render :edit  
    end
  end
  
  def destroy
    @product = Product.find(params[:id])
    @product.destroy
      redirect_to @product, notice: "product was successfully deleted"
    
  end
   
  def multiple_destroy
    Product.where(id: params[:product_ids]).destroy_all
    redirect_to products_path, notice: "Selected products deleted successfully"
  end

  def edit
  	@product = Product.find(params[:id])
  end
  
  def show
    @product = Product.find(params[:id])
  end
  
  def new
    @product = Product.new  	
  end
  
  private
  
    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:title, :description, :price, :image_url)
    end
end
