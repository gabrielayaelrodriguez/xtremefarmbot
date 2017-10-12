# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Greenhouse.create
Plant.create(
				name: 'Lechuga', 
				soil_moisture: 40,
				magnesium: 500,
				potassium: 500,
				iron: 500,
				temperature: 40,
				humidity: 40,
				hours_of_light: 10,
				growth_time: 40
			)

Plant.create(
				name: 'Espinaca', 
				soil_moisture: 30,
				magnesium: 300,
				potassium: 300,
				iron: 300,
				temperature: 30,
				humidity: 50,
				hours_of_light: 10,
				growth_time: 20
			)
