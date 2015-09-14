class Entry < ActiveRecord::Base
	belongs_to :project
	belongs_to :worker, class_name: "User", foreign_key: "user_id"
end
