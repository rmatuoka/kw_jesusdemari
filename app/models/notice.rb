class Notice < ActiveRecord::Base
  attr_accessible :title, :summary, :body, :published, :active
  validates_presence_of :title, :summary, :body
end
