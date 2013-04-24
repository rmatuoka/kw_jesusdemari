class Category < ActiveRecord::Base
  #attr_accessible :title, :description
has_many :subcategories
has_attached_file:logo, :styles =>{:thumb => "50x50#",:logo => "291x138#"}
end
