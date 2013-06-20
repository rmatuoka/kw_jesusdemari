class ProductImage < ActiveRecord::Base
  belongs_to :product
  has_attached_file :image, :styles => { :medium => "298x373>", :thumb => "150x150>"}
end
