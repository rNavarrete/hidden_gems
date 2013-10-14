class VideosController < ApplicationController
  before_filter :authenticate_user!  	

  def show
    @video = Video.find(params[:id])
    @comment = Comment.new
  end  

  def edit
    @video = Video.find(params[:id])  
  end  

  def index
    @video = Video.all
    @user = Users.all
  end  

  def new
  	@video = Video.new
  end
	
  def create
  	@video = Video.create(video_params)
  	redirect_to root_path
  end

  def update
    @video = Video.find(params[:id])
 
    if @video.update(person_params)
      redirect_to @video
    else
      render 'edit'
  end
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
  def video_params
    params.require(:video).permit(:user_id, :video_link, :artist, :song, :description, :user_name)
  end
end
