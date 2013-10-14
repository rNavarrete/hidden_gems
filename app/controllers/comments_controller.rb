class CommentsController < ApplicationController
	def new
	  @comment = Comment.new	
	end

	def create
	  @comment = Comment.create(comment_params)
      redirect_to :back
	end	

	private

	def comment_params
      params.require(:comment).permit(:text, :user_name, :video_id, :user_id)
	end	
end
