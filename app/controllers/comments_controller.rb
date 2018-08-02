class CommentsController < ApplicationController

before_action :user_logged_in

def new
 @comment = Comment.new
end 

def create 
 
 @comment = current_user.build(comment_params)
 comment[:post_id] = params[:post_id]
 if current_user? 
 @comment.save
 flash[:success] = "Your comment is submitted"
 redirect_to post_path(@comment.post)
 else
 redirect_to new_user_session_url
 end
end

def comment_params
 params.require(:comment).permit(:author, :body)
end

end
