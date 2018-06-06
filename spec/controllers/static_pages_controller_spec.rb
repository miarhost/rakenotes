require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do

describe "get #HOME" do
 it "gets home" do
 visit home_url
 expect(:title).to_equal "Home | Rakenotes, about Ruby & Deploy"
 expect(response).to be_success
 end
end

describe "get #ABOUT" do
 it "gets to about page" do
 visit about_url
 expect(:title).to_equal "About |  Rakenotes, about Ruby & Deploy"
 expect(response).to be_success
 end
end

end