class WaterIrrigation

	def self.irrigate(sector, num)
		WaterPipe.open(sector, num)
		#logear
		Notification.notify("water irrigation")
	end
end