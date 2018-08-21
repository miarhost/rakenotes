require 'rails_helper'

RSpec.describe AdminsController, type: :controller do

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #login" do
    it "should get to login page"
     expect(response).to have_http_status(:success)
   end

  describe "POST #login" do 
    it "should log in with valid attributes" do
      expect(response).to redirect_to admin_url
     end
    end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
