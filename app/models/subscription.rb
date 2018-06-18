class Subscription < ApplicationRecord

EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

validates :email, 
          presence: true,
          length: { minimum: 12, maximum: 255 },
          format: { with: EMAIL_REGEX },
          uniqueness: true

end
