class GroupController < ApplicationController
  def index
  @group_rotative = Section.all(:conditions => ['page=2'])
  end

end
