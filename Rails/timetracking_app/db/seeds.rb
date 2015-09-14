# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.destroy_all
Entry.destroy_all
User.destroy_all
puts "Deleted all projects"

user1 = User.create(username: Faker::Name.name)
user2 = User.create(username: Faker::Name.name)
user3 = User.create(username: Faker::Name.name)
users = [user1, user2, user3]

5.times do |i|
	p = Project.new(title: Faker::Company.name)
	p.description = Faker::Lorem.sentence(3)
	p.save
	3.times do |l|
        random_user = users.sample
        e = p.entries.new({
            hours: rand(0..4),
            user_id: random_user.id,
            minutes: rand(0..60),
            comment: Faker::Hacker.say_something_smart,
            created_at: Date.current - (i + 1).days
        })
        e.save
    end
end

puts "done"
