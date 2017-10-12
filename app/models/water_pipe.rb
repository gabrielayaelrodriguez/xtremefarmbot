class WaterPipe

	def self.open(sector, num)
		sector.update(:moisture => sector.moisture + num)
	end

end