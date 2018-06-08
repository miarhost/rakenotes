require 'rails_helper'

RSpec.describe PostsController, type: :controller do
 
 before do
  it "set post with params" do
   expect(:valid_attributes).to eql Post.new(title: "Example", body: "Something by user")
  end 
 end
 
 describe "GET #index" do
 	it "returns a success responce" do
     post = User.posts.build! valid_attributes
     get: :index 
     expect(responce).to be_success
    end
   end

  describe "POST #create" do
  	context "with valid parameters" do

  	it "create new Post" do
  	 expect {
  	 	post :create, params: {post: valid_parameters}
  	 }
  	 expect(response).to be_success
  	end

  	it "redirects to created post" do
  		expect {  post :create, params: {post: valid_parameters}}
  		expect(response).to redirect_to(User.post.last)
     end
    end
   end

end