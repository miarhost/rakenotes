require 'rails_helper'

RSpec.describe Message, type: :model do

before(:each) do
 @message = Message.new
end

describe "ActiveModel validations" do
 it 'should have text' do
  expect(message).to validate_presence_of(:body)
 end

 it 'should have valid text length' do
  expect(message.body.size).to be < 250
 end

end

describe "ActiveRecord associations" do
 it "should belong to user" do
  expect(message).to belong_to(:user)
 end

 it "should belong to post" do
  expect(message).to belong_to(:post)
 end

end

end


