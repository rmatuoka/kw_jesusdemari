class Admin::ProductsController < ApplicationController
layout "inadmin"
uses_tiny_mce :options => {
                            :theme => 'advanced',
                            :theme_advanced_resizing => true,
                            :theme_advanced_resize_horizontal => false,
                            :plugins => %w{ table fullscreen }
                          }
before_filter :load_subcategorie
  def index
    @products = @subcategory.products.all
  end

  def show
    @product = @subcategory.products.find(params[:id])
  end

  def new
    @product = @subcategory.products.new(:active => true)
  end

  def create
    @product = @subcategory.products.new(params[:product])
    if @product.save
      redirect_to admin_category_subcategory_product_path(@category,@subcategory,@product), :notice => "Successfully created product."
    else
      render :action => 'new'
    end
  end

  def edit
    @product = @subcategory.products.find(params[:id])
  end

  def update
    @product = @subcategory.products.find(params[:id])
    if @product.update_attributes(params[:product])
      redirect_to admin_category_subcategory_product_path(@category,@subcategory,@product), :notice  => "Successfully updated product."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @product = @subcategory.products.find(params[:id])
    @product.destroy
    redirect_to admin_category_subcategory_products_path(@category,@subcategory), :notice => "Successfully destroyed product."
  end
  
  def load_subcategorie
  @category = Category.find(params[:category_id])
	@subcategory = Subcategory.find(params[:subcategory_id])
  end
end
