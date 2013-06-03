class Notify < ActionMailer::Base
  default :from => "Jesus de Mari <atendimento@jesusdemari.com.br>"
  
  def send_contact_to_adm(contact)
    @contact = contact
    mail(:to => "bsouza@korewa.com.br",:bcc => "log@korewa.com.br", :subject => "Jesus de Mari - Novo Contato")
    end
   
  def send_budget_to_adm(contact)
    @contact = contact
    mail(:to => "bsouza@korewa.com.br",:bcc => "log@korewa.com.br", :subject => "Jesus de Mari - Novo Contato")
    end
end
