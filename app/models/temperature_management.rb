class TemperatureManagement

	def self.raise(num)
		TemperatureControl.raise(num)
		#logear
		Notification.notify("Temperature Raised") 

	end

	def self.descend(num)
		TemperatureControl.raise(num)
		#logear
		Notification.notify("Temperature Descended") 
		
		
	end
end