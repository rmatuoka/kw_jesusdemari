class Banner < ActiveRecord::Base
  #attr_accessible :title, :link, :section_id, :published, :active
  belongs_to :section
  has_attached_file:image, :styles =>{:thumb => "50x50#",:rotative => "950x410#",:partner => "378x295#",:partner_secondary => "378x160#",:group => "950x572#"}
end
