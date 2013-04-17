class ContactsController < ApplicationController
  layout "application"
  
  def index
    redirect_to new_contact_path
  end
  
  def new
    @contact = Contact.new
  end

  def show
  end

end
