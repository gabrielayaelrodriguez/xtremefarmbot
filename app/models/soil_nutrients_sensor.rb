class SoilNutrientsSensor

	def self.sense(sector)
		
		{
			:magnesium => rand(0..1000),
			:potassium => rand(0..1000),
			:iron => rand(0..1000)
		}
	end
end
