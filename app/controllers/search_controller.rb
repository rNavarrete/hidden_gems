class SearchController < ApplicationController
  def index
    @videos = Video.search(:artist => params[:q]).page(params[:page]).per_page(20)
  end
end
