class ProductsController < ApplicationController
  def index
  @subcategories = @category.subcategories.all(:conditions => category_id=1)
  end

  def show
  end

end
