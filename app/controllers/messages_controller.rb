class MessagesController < ApplicationController 

before_action :authenticate_user!

 def index 
  @messages = Message.all
 end

 def show
 end

 def new
  @message = Message.new
 end

 def create 
  @message = current_user.messages.build(message_params)
  @message.user_id = params[:user_id]
  if current_user
  @message.save
  flash[:success] = 'Your message is sent'
  else
  redirect_to new_user_session_url
  end
  redirect_to post_path(@message.post)
 end

 def update
  @message = Message.find(params[:id])
  respond_to do |format|
  if current_user
   @message.update
   else
   redirect_to new_user_session_url
  end
 end
end

 def destroy
 @message = Message.find(params[:id])
 @message.destroy
 redirect_to posts_path
 end

def message_params
	params.require(:message).permit(:body)
end

end