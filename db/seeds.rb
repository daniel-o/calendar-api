# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

(1..32).each do
	random_title = Faker::Lorem.sentence(word_count=rand(2..5))
	start = Faker::Time.between(1.month.ago, 1.month.from_now)

	# Randomly generates some number of minutes between 15-3.hours and rounds it to the nearest 5 minute mark.
	minute_delta = (rand(15..(60*3)) / 5).ceil * 5
	finished = start + minute_delta.minutes

	Event.create(title: random_title, start: start, end: finished)
end
