class User < ApplicationRecord
	before_save { self.email = email.downcase }
	validates(:fname, presence: true, length: { maximum: 15 })
	validates(:lname, presence: true, length: { maximum: 15 })
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates(:email, presence: true, length: { maximum: 30 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false })
	validates(:typeofperson, length: { maximum: 10 })
	validates(:phone, uniqueness: true)
	validates(:housenum, { maximum: 5 })
	validates(:street, length: { maximum: 15 })
	validates(:town, length: { maximum: 20 })
	validates(:state, length: { maximum: 20})
	validates(:paymentmethod, length: { maximum: 20})
	has_secure_password
	validates :password, presence: true, length: { minimum: 6 }


end

