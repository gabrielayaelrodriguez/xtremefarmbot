class InsecticideIrrigation

	def self.irrigate
		InsecticidePipe.open()
		#logear
		Notification.notify("Insecticide Irrigation")
	end

end