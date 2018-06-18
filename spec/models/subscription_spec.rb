require 'rails_helper'

RSpec.describe Subscription, type: :model do

	context "create subscription's instance" do
	 subscription = Subscription.create{email: "user@example.com"}
    end

  describe "ActiveModel validations" do
  	it "should validate presence of email" do
  	expect(subscription).to validate_presence_of(:email)
    end

    it "should validate format of email" do
    expect(:email).to eq(EMAIL_REGEX)
    end
  end

end
