require 'rails_helper'

RSpec.describe Comment, type: :model do
 
 before(:each) do
 	subject { Comment.new{author: "Username", body: "texts"} }
  end

  describe "ActiveModel Validations" do
   
   it "should have valid attributes" do
   	expect(subject).to validate_presence_of(:author)
   	expect(subject.body).to be_valid
   	expect(response).to redirect_to(:posts_index)
   end

  end

  describe "ActiveRecord relations" do

  	it "should belong to post" do
  	 expect(subject).to belong_to(:post)
  	end

  end

end
