require 'rails_helper'

RSpec.describe SubscriptionMailer,type:mailer do

 def create_subscription(options)
  subscription = Subscription.new(options)
  subscription.set_status(options[:status])
  subscription
 end

 
 it 'should send mail when save' do
  subscription = create_subscription(:status => 'ok')
  ActionMailer::SubscriptionMailer.subscribe(subscription(options[:email]))
 end

end