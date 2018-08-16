class Admin < ApplicationRecord

VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i


has_secure_password

validates_presence_of :name, :email, :password

end
