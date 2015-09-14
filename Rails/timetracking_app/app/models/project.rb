class Project < ActiveRecord::Base
	validates :title, presence: true, uniqueness: true, length: {maximum: 30}
	
	has_many :entries

	def self.iron_find(id)
		where({id: id})
	end
end
