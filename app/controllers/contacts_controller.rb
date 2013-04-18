class ContactsController < ApplicationController
  layout "application"
  
  def index
    redirect_to new_contact_path
  end
  
  def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(params[:contact])
    if @contact.save
      Notify.send_contact_to_adm(@contact).deliver
      redirect_to contact_path(@contact), :notice => "Mensagem de sucesso."
  
  else
    render :action => 'new'
  end
  end
  def show
  end

end
