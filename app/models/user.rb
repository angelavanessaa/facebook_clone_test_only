class User < ActiveRecord::Base
	has_many :likes, dependent: :destroy
	has_many :statuses, dependent: :destroy
	validates :name, presence: true
	validates :email, presence: true, uniqueness: true, format: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
	validates :password, presence: true, length: { minimum: 6, maximum: 20 }
	validates :password_confirmation, presence: true
	validates_confirmation_of :password
	has_secure_password
end
