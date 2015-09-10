class Contact < ActiveRecord::Base
	validates :name, presence: true
	validates :address, presence: true
	validates :phone, length: {is: 10}
	validates :email, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create}
	validates :favorite, presence: true
end
