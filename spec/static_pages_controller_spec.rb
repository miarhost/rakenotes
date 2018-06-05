require 'rails_helper'

Rspec.describe StaticPagesController, type: :controller do

it "gets home" do
visit home_path
end

it "gets to about page" do
visit about_path
end

end