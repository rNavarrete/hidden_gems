class SearchController < ApplicationController
  def index
    @videos = Video.search(:title => params[:q]).page(params[:page]).per_page(20)
  end
end
