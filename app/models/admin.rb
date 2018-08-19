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
    
	has_secure_password

	validates :password, presence: true, length: { minimum: 6 }

	has_many :posts, dependent: :destroy
	has_many :messages, through: :posts, dependent: :destroy

end