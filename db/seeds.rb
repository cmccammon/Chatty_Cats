# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



10.times do
 user = User.create({
   name: Faker::Name.first_name,
   username: Faker::Internet.user_name,
   email: Faker::Internet.email,
   about: Faker::Company.catch_phrase
   })
end

5.times do
  room = Room.create({
    name: Faker::App.name
    })
end

30.times do
  chats = Chat.create({
    message: Faker::Hacker.say_something_smart,
    user_id: Faker::Number.between(1, 10),
    room_id: Faker::Number.between(1, 5)
    })
end



