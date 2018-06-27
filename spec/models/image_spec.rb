require 'rails_helper'

RSpec.describe Image, type: :model do

 describe "ActiveRecord associations" do
  it "should belong to user" do
  expect(:image).to belong_to(:user)
  end
 end

end

