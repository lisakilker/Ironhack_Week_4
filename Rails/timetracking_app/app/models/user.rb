class User < ActiveRecord::Base
	has_many :posts, class_name: "Entry", foreign_key: "user_id"
end
