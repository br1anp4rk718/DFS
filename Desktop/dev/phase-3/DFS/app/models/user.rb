class User < ActiveRecord::Base
	validates :username, uniqueness: true, confirmation: true
	validates :password, length: {minimum: 6}
end
