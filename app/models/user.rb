class User < ApplicationRecord
	has_many :gossips
	has_secure_password

	validates :password,
    presence: true,
	length: { minimum: 6 }

	validates :email,
    presence: true
	
end
