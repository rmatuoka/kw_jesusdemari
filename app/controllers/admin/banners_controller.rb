class Admin::BannersController < ApplicationController
layout "inadmin"

before_filter :load_section
  def index
    @banners = @section.banners.all
  end

  def show
    @banner = @section.banners.find(params[:id])
  end

  def new
    @banner = @section.banners.build
  end

  def create
    @banner = @section.banners.build(params[:banner])
    if @banner.save
      redirect_to admin_section_banner_path(@section,@banner), :notice => "Successfully created banner."
    else
      render :action => 'new'
    end
  end

  def edit
    @banner = @section.banners.find(params[:id])
  end

  def update
    @banner = @section.banners.find(params[:id])
    if @banner.update_attributes(params[:banner])
      redirect_to admin_section_banner_path(@section,@banner), :notice  => "Successfully updated banner."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @banner = @section.banners.find(params[:id])
    @banner.destroy
    redirect_to admin_section_banners_path(@section), :notice => "Successfully destroyed banner."
  end
  
  def load_section
	@section = Section.find(params[:section_id])
  end
end
