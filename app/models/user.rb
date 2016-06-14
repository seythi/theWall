class User < ActiveRecord::Base
	has_many :statuses
	has_many :comments
	has_secure_password
end
