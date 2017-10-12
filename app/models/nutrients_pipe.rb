class NutrientsPipe

	def self.open(sector, nutrients)
		nutrients.each do |nut|
			sector.update(nut)
		end
	end

end