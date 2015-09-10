# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Contact.destroy_all
puts "Projects destroyed"

Contact.create(name: "Frank", email: "Frank@gmail.com", address: "123 Main street", phone: "4159490394", favorite: "no")
Contact.create(name: "Jack", email: "Jack@gmail.com", address: "345 Chester street", phone: "4459493894", favorite: "no")
Contact.create(name: "Mary", email: "Mary@gmail.com", address: "423 Underwood street", phone: "9485890394", favorite: "yes")
Contact.create(name: "Lisoush", email: "Lisoush@gmail.com", address: "4123 Boris street", phone: "9888890394", favorite: "yes")

puts "Projects created"