class PostsController < ApplicationController
 
 before_action :set_post, only:[:show, :edit, :update, :destroy]

 def index 
  @posts = Post.all 
 end

 def new
  @post = Post.new
 end

 def show 
  @post = Post.find(params[:id])
 end

 def create
  @post = User.posts.build(post_params)
  @post.user_id = @post.user.id
   if @post.save
   	flash[:success]
   	redirect_to post_path(@user.post)
   	else
   	redirect_to user_posts_url(@post.user_id)
    end
  
 end

 def update
  @post = Post.find(params[:id]) 
   respond_to do |format|
   	if @post.update(post_params)
     format.html { redirect_to @post, notice: "The post is successfully updated" }
     format.json { render :show, status: :ok, location: @post }
    else
     format.html { render :new }
     format.json { render json: @post.errors, status: :unprocessable_entity }
    end
   end
  end

 def destroy
  @post = Post.find(params[:id])
  @post.destroy
   respond_to do |format| 
   	format.html { redirect_to posts_url, notice: "The post was successfully deleted"}
   	format.json { head :no_content }
   end
 end 

private
 
 def set_post
  @post = Post.find(params[:id])
 end

 def post_params
  params.require(:post).permit(:title, :body)
 end

end