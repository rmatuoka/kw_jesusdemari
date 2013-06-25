class Product < ActiveRecord::Base
  #default_scope where(:active => true)
  #attr_accessible :summary, :body, :link, :active, :published
  belongs_to :subcategory
  has_many :product_images
  has_attached_file:logo, :styles =>{:thumb => "50x50#",:logo => "291x138#"}
end
