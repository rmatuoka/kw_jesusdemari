class ProductsController < ApplicationController
  def index
    @categories = Category.all
    
  end
  
  def show_subcategory
    @category = Category.find_by_id(params[:id])
    @subcategories = @category.subcategories
  end
  
  def show_product
    @subcategories = Subcategory.find_by_id(params[:id])
    @products = @subcategories.products
  end

  def show
    @product = Product.find(params[:id])
    @category_id = Category.find_by_id(params[:id])
    if !@category_id.blank?
      render :index
    else
      redirect_to products_path
    end
  end

end
