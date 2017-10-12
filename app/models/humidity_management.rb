class HumidityManagement

	def self.humidify(num)
		HumidityControl.activate(num)
		Notification.notify("Humidification")
	end

end