class VisitorsController < ApplicationController
  def index
  	@videos = Video.all
  end
end
