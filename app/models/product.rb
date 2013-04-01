class Product < ActiveRecord::Base
  attr_accessible :summary, :body, :link, :active, :published
end
