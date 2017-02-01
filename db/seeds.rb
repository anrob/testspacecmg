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


# country_list = [
# "Marc Wilner",
# "New York Entertainment",
# "AP3",
# "No Email",
# "DaVinci Strings & Rock Strings",
# "Washington Video Acts",
# "Capital Music",
# "Entertainment Exchange",
# "Andy Kushner Ent",
# "Foto 2 Go",
# "Pizazz Djs",
# "Fast Forward",
# "Maryland Ent",
# "Washington Lighting",
# "Four Star",
# "Washington Photo",
# "Glyde Productions",
# "So Fresh Entertainment" 
# ]
# Company.delete_all
# country_list.each do |name|
#  Company.create( name: name )
# end
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')



PPPlayer.delete_all
open("http://www.kundalinibitbybit.com/blog/wp-content/uploads/2016/06/Playersfull.txt") do |countries|
  countries.read.each_line do |country|
    name, position, home, work, cell, email, status, assigned, payrate, taxid, actcode = country.chomp.split("|")
    Player.create!(:first_name => name, :home_phone => home, :work_phone => work, :cell_phone => cell, :email => email, :status => status, :regular_rate => payrate, :position_type => position )
  end
end