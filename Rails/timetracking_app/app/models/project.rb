class Project < ActiveRecord::Base

	def self.iron_find(id)
		where({id: id})
	end
	def self.clean_old
		where("created_at < ?", 8.hours.ago).destroy_all
	end
end
