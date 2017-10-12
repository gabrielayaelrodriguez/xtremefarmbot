class Plant < ApplicationRecord
	has_many :plant_sector
	validates :name, presence: true, uniqueness: true
	validates :soil_moisture, presence: true
	validates :magnesium, presence: true
	validates :potassium, presence: true
	validates :iron, presence: true
	validates :temperature, presence: true
	validates :temperature, presence: true
	validates :humidity, presence: true
	validates :hours_of_light, presence: true
	validates :growth_time, presence: true

end
