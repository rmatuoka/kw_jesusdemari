class ProductsController < ApplicationController
  def index
    @categories = Category.all # Utilizado para trazer o Menu de Categorias
  end
  
  def show_subcategory # Carrega as variaveis com o ID da Categoria e Subcategoria
    @category = Category.find_by_id(params[:id])
    @subcategories = @category.subcategories
  end
  
  def show_product
    @subcategories = Subcategory.find_by_id(params[:id])
    @products = @subcategories.products
    @subcategory = @subcategories
  end
  
  def show_productspec
    @products = Product.find_by_id(params[:id])
    @product = @products
  end

  def show
    @product = Product.find(params[:id])
    @category_id = Category.find_by_id(params[:id])
    @subcategory_id = Subcategory.find_by_id(params[:id])
    @product_id = Product.find_by_id(params[:id])
    if !@category_id.blank?
      render :index
    else
      redirect_to products_path
    end
  end

end
