class Greenhouse < ApplicationRecord
	validates_inclusion_of :turn_on_light_time, :in => 0..23
	validates_inclusion_of :turn_off_light_time, :in => 0..23

	has_many :plant_sectors
end
