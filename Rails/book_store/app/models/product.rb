class Product < ActiveRecord::Base
	validates :product, presence: true, uniqueness: true, length: {maximum: 30}

	has_many :entries

	def self.iron_find(id)
		where({id: id})
	end

	def self.search(search)
  		if search
    		where('product LIKE ?', "%#{search}%")
  		end
	end
end

