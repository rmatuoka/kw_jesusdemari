class ProductsController < ApplicationController
  def index
    @categories = Category.all
    
    #@artefatos = Subcategory.all(:conditions => ["category_id=1"])
    #@artefatos_produtos = Product.all(:conditions => ["subcategory_id=1"])
    #@fabricados = Subcategory.all(:conditions => ["category_id=2"])
    #@fabricados_produtos = Product.all(:conditions => ["subcategory_id=2"])
    #@pavimentacao = Subcategory.all(:conditions => ["category_id=3"])
    #@pavimentacao_produtos = Product.all(:conditions => ["subcategory_id=3"])
  end

  def show
    @product = Product.find(params[:id])
  end

end
