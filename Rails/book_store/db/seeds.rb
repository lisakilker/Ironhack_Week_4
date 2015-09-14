# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.destroy_all
Entry.destroy_all
puts "Deleted all projects"

Product.create(product: "Moby Dick", description: "A classic book", price: "4", ranking: "9")

5.times do |i|
	p = Product.new(product: Faker::Name.name)
	p.description = Faker::Lorem.sentence(3)
	p.ranking = rand(0..5)
	p.description = Faker::Hacker.say_something_smart
	p.save
end
# 3.times do |l|
#     e = p.entries.new
#         e.save
# end

puts "done"