# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# User.create!(
#              email: "example@washingtontalent.com",
#              password:              "foobar",
#              password_confirmation: "foobar")

# 20.times do |n|
# #  name  = Faker::Name.name
#  email = "example-#{n+1}@washingtontalent.com"
#  password = "password"
#  User.create!(
#                email: email,
#                password:              password,
#                password_confirmation: password)
# end


country_list = [
"Marc Wilner",
"New York Entertainment",
"AP3",
"No Email",
"DaVinci Strings & Rock Strings",
"Washington Video Acts",
"Capital Music",
"Entertainment Exchange",
"Andy Kushner Ent",
"Foto 2 Go",
"Pizazz Djs",
"Fast Forward",
"Maryland Ent",
"Washington Lighting",
"Four Star",
"Washington Photo",
"Glyde Productions",
"So Fresh Entertainment" 
]
Company.delete_all
country_list.each do |name|
  Company.create( name: name )
endAdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')