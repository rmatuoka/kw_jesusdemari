class Admin::SubcategoriesController < ApplicationController
layout "inadmin"
uses_tiny_mce :options => {
                            :theme => 'advanced',
                            :theme_advanced_resizing => true,
                            :theme_advanced_resize_horizontal => false,
                            :plugins => %w{ table fullscreen }
                          }

before_filter :load_category
  def index
    @subcategories = @category.subcategories.all
  end

  def show
    @subcategory = @category.subcategories.find(params[:id])
  end

  def new
    @subcategory = @category.subcategories.new
  end

  def create
    @subcategory = @category.subcategories.new(params[:subcategory])
    if @subcategory.save
      redirect_to admin_category_subcategory_path(@category,@subcategory), :notice => "Successfully created subcategory."
    else
      render :action => 'new'
    end
  end

  def edit
    @subcategory = @category.subcategories.find(params[:id])
  end

  def update
    @subcategory = @category.subcategories.find(params[:id])
    if @subcategory.update_attributes(params[:subcategory])
      redirect_to admin_category_subcategory_path(@category,@subcategory), :notice  => "Successfully updated subcategory."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @subcategory = @category.subcategories.find(params[:id])
    @subcategory.destroy
    redirect_to admin_category_subcategories_path(@subcategory), :notice => "Successfully destroyed subcategory."
  end
  
  def load_category
	@category = Category.find(params[:category_id])
  end
end
