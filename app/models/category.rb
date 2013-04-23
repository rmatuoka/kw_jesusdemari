class Category < ActiveRecord::Base
  #attr_accessible :title, :description
  has_many :subcategories
end
