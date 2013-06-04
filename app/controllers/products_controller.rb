class ProductsController < ApplicationController
  def index
    @categories = Category.all
    
  end
  
  def show_category
    @category = Category.find_by_id(params[:id])
    @subcategories = @category.subcategories
  end
  
  def show_product
    
  end

  def show
    @product = Product.find(params[:id])
  end

end
