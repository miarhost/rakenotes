require 'rails_helper'

RSpec.describe User, type: :model do

  before do
    subject { described_class.new(:name => "User", :email => "user@example.com", :password => "1234567", :password_confirmation => "1234567") }
  end

  describe "ActiveModel validations" do

  it "should not be valid without email" do
  	subject.email = nil
  	expect(user).not_to be_valid
    expect(subject).to validate_presence_of(:email)
    expect(response).to be_success
  end

  it "should not be valid without password" do
  	subject.password = nil
  	expect(user).not_to be_valid
    expect(subject).to validate_presence_of(:password)
    expect(response).to be_success
  end

  it "should validate email's length" do
   expect(subject.email.size).should be < 255
  end

  it "should validate password confirmation" do
    expect(subject).to validate_presence_of(:password_confirmation)
    expect(password_confirmation).to eql(:password)
    expect(response).to be_success
  end

 end

 describe "ActiveRecord associations" do

  it "should have posts" do
    expect(subject).to have_many(:posts)
  end    
  
 end

end
