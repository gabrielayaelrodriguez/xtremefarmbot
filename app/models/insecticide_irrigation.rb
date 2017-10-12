class InsecticideIrrigation

	def self.irrigate
		InsecticidePipe.open()
		#logear
		Notification.notify("insecticide irrigation")
	end

end