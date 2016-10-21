class User < ApplicationRecord
	before_save { self.email = email.downcase }
	validates(:fname, presence: true, length: { maximum: 15 })
	validates(:lname, presence: true, length: { maximum: 15 })
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates(:email, presence: true, length: { maximum: 30 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false })
	validates(:typeofperson, presence: true, length: { maximum: 10 })
	validates(:phone, presence: true, length: { maximum: 11 }, uniqueness: true)
	validates(:housenum, presence: true, length: { maximum: 5 })
	validates(:street, presence: true, length: { maximum: 15 })
	validates(:town, presence: true, length: { maximum: 20 })
	validates(:state, presence: true, length: { maximum: 20})
	validates(:cardtype, presence: true, length: { maximum: 15 })
	validates(:expmonth, presence: true, length: { maximum: 15 })
	validates(:expyear, presence: true, length: { maximum: 4 })
	validates(:cardnum, presence: true, length: { maximum: 15 })
	has_secure_password
	validates :password, presence: true, length: { minimum: 6 }


end

