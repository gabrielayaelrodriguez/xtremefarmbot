# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Greenhouse.create
Plant.create(
				name: 'lechu', 
				soil_moisture: 40,
				magnesium: 500,
				potassium: 500,
				iron: 500,
				temperature: 40,
				humidity: 40,
				hours_of_light: 40,
				growth_time: 40
			)

