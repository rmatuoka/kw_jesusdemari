class Admin::ProductImagesController < ApplicationController
  layout "inadmin"
  before_filter :load_product
  def index
    @product_images = @product.product_images.all
  end

  def show
    @product_image = @product.product_images.find(params[:id])
  end

  def new
    @product_image = @product.product_images.build
  end

  def create
    @product_image = @product.product_images.build(params[:product_image])
    if @product_image.save
      redirect_to admin_category_subcategory_product_product_image_path(@category,@subcategory,@product,@product_image), :notice => "Successfully created product image."
    else
      render :action => 'new'
    end
  end

  def edit
    @product_image = @product.product_images.find(params[:id])
  end

  def update
    @product_image = ProductImage.find(params[:id])
    if @product_image.update_attributes(params[:product_image])
      redirect_to admin_category_subcategory_product_product_image_path(@category,@subcategory,@product,@product_image), :notice  => "Successfully updated product image."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @product_image = @product.product_images.find(params[:id])
    @product_image.destroy
    redirect_to admin_category_subcategory_product_product_images(@category,@subcategory,@product), :notice => "Successfully destroyed product image."
  end
  
  def load_product
    @category = Category.find(params[:category_id])
    @subcategory = Subcategory.find(params[:subcategory_id])
    @product = Product.find(params[:product_id])
  end
end
