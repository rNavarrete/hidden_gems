class VideosController < ApplicationController
  before_filter :authenticate_user!  	

  def index
    @video = Video.all  
  end  

  def new
  	@video = Video.new
  end
	
  def create
  	@video = Video.create(person_params)
  	redirect_to root_path
  end

  def edit
  end	

  def destroy
    @video = Video.find(params[:id]).delete
    redirect_to :back
  end  

  def vote_for_video
    @video = Video.find(params[:id])
    current_user.vote_for(@video)
    redirect_to :back
  end

  def vote_against_video
    @video = Video.find(params[:id])
    current_user.vote_against(@video)
    redirect_to :back
  end  

  private
    # Using a private method to encapsulate the permissible parameters is
    # just a good pattern since you'll be able to reuse the same permit
    # list between create and update. Also, you can specialize this method
    # with per-user checking of permissible attributes.
  def person_params
    params.require(:video).permit(:video_link, :artist, :song)
  end
end
