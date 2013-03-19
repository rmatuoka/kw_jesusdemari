class HomeController < ApplicationController
  def index
  @highlights = Section.all(:conditions => ['page=1'])
  @news = Notice.all(:limit => 3)
  
  end

end
