require 'rails_helper'

RSpec.describe Post, type: :model do
 
 before do
 	subject { described_class.new(:title => "Example Post", :body => "Welcome, the first user's post")}
 end

 describe "ActiveModel validations" do
 
  it "should validate presence of title" do
  	expect(subject).to validate_presence_of(:title)
  	expect(response).to be_success
  end

  it "should validate presense of text" do
  	expect(subject).to validate_presence_of(:body)
  end
  
 end

 describe "ActiveRecord associations" do

   it "should belong to user" do
   	expect(subject).to belong_to(:user)
   end

 end

end
