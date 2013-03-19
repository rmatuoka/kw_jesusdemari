class Notice < ActiveRecord::Base
  validates_presence_of :title, :summary, :body
  has_attached_file:image, :styles =>{:thumb => "50x50#",:home => "150x100#",:index => "172x133#",:show => "172x133#"}
end
