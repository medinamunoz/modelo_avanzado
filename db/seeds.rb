# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Tweet.destroy_all
User.destroy_all


2.times do |u|
	user= User.create(name: "usuario #{u}")
	2.times do |t|
		user.tweets.build(content:"tweet del usuario #{u}").save
	end
end