class MailersJob < ApplicationJob
  queue_as :default

   rescue_from(ErrorLoadingSite) do
    retry_job wait: 25.minutes, queue: :low_priority
   end

   def subscribe(email_address)
	@email_address = email_address
	mail(to: email_address, subject: "Your subscription is set").deliver_later
   end

end