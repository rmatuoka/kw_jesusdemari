class Admin::NoticesController < ApplicationController
  layout "inadmin"
  
  def index
    @notices = Notice.all
  end

  def show
    @notice = Notice.find(params[:id])
  end

  def new
    @notice = Notice.new
  end

  def create
    @notice = Notice.new(params[:notice])
    if @notice.save
      redirect_to admin_notices_path, :notice => "Successfully created notice."
    else
      render :action => 'new'
    end
  end

  def edit
    @notice = Notice.find(params[:id])
  end

  def update
    @notice = Notice.find(params[:id])
    if @notice.update_attributes(params[:notice])
      redirect_to [:admin, @notice], :notice  => "Successfully updated notice."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @notice = Notice.find(params[:id])
    @notice.destroy
    redirect_to admin_notices_url, :notice => "Successfully destroyed notice."
  end
end
