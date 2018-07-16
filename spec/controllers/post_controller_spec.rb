require 'rails_helper'

RSpec.describe PostsController, type: :controller do
 
 before do
  it "set post with params" do
   expect(:valid_attributes).to eql User.post.build(title: "Example", body: "Something by user")
  end 
 end
 
 describe "GET #index" do
 	it "returns a success responce" do
     post = User.posts.build! valid_attributes
     get :index 
     expect(responce).to be_success
    end
   end

  describe "POST #create" do
  	context "with valid attributes" do

  	it "create new Post" do
  	 expect {
  	 	post :create, params: {post: valid_attributes}
  	 }
  	 expect(response).to be_success
  	end

  	it "redirects to created post" do
  		expect {  post :create, params: {post: valid_attributes}}
  		expect(response).to redirect_to(User.post.last)
     end
    end
   end

  describe "POST #update" do
    context "post with valid attributes exists" do
      @post = Post.find(params[:id])
      it "updates existing post and respond success" do
        expect {
         post :update, params: {post: valid_attributes}
        }
      expect(responce).to assign_to(:post)
    end
   end
 end

 describe 

end