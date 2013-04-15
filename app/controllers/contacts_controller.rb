class ContactsController < ApplicationController
  layout "application"
  def new
    @contact = Contact.new
  end

  def show
  end

end
