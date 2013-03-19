class Banner < ActiveRecord::Base
  #attr_accessible :title, :link, :section_id, :published, :active
  belongs_to :section
end
