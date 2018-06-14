class SubscriptionMailer < ApplicationMailer
	
	default from: "rghostme@gmail.com"

   def subscribe(email_address)
	@email_address = email_address
	mail(to: email_address, subject: "Your subscription is set")
   end

end
