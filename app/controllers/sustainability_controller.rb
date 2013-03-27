class SustainabilityController < ApplicationController
  def index
  @sustainability_rotative = Section.all(:conditions => ['page=6'])
  end

end
