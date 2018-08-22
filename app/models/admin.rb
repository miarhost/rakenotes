class Admin < ApplicationRecord

VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i


has_secure_password

    before_save { email.downcase! }

	validates :name, presence: true, length: { maximum: 50 }
	validates :email,
	presence: true,
	uniqueness: true,
	length: { maximum: 255 },
	format: { with: VALID_EMAIL_REGEX }
    
	validates :password, presence: true, length: { minimum: 6 }

	def Admin.digest(string)
     cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
    end

    def Admin.new_token
    	SecureRandom.urlsafe_base64
    end

end
