require 'rails_helper'

Rspec.describe StaticPagesController, type: :controller do

it "gets home" do
visit home_path
expect(:title).to_equal "Home | Rakenotes, about Ruby & Deploy"
end

it "gets to about page" do
visit about_path
expect(:title).to_equal "About |  Rakenotes, about Ruby & Deploy"
end

end