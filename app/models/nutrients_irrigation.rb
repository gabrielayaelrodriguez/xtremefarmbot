class NutrientsIrrigation

	def self.irrigate(sector, nutrients)
		NutrientsPipe.open(sector, nutrients)
		#logear
		Notification.notify("Nutrients Irrigation")
	end
end