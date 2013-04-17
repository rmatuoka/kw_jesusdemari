class Contact < ActiveRecord::Base
  validates_presence_of :name, :email, :phone, :city, :state, :message
end
