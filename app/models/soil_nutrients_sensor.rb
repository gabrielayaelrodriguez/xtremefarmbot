class SoilNutrientsSensor

	def self.sense(sector)
		
		{
			:magnesium => sector.magnesium,
			:potassium => sector.potassium,
			:iron => sector.iron
		}
	end
end
