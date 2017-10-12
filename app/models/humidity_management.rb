class HumidityManagement

	def self.humidify(num)
		HumidityControl.activate(num)
		Notification.notify("pssss")
	end

end