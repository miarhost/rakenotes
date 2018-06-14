require "rails_helper"

RSpec.describe SubscriptionMailer, type: :mailer do

describe "subscribe" do
 let(:subscription) { create(:subscription, email: "user@example.com") }


  it "renders the mail" do
 	expect(mail.subject).to eq("You got a subscription")
    expect(mail.to).to eq("user@example.com")
    expect(mail.body).to match('Your subscription on rake articles is set on email #{@email} ')
  end
 end
end