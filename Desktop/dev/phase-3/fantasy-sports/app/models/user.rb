class User < ActiveRecord::Base

	has_many :players

	has_secure_password
end
