require 'rails_helper'

RSpec.describe SubscriptionsController, type: :controller do



describe "POST #create" do
	it "creates new subscription" do
	subscription = Subscription.create :email
	expect(response).to be_success
	expect(ActionMailer::SubscriptionMailer.subscribe(:email)).to :deliver_later
   end
 end
 
end



		

