class TemperatureManagement

	def self.raise(num)
		TemperatureControl.raise(num)
		#logear
		Notification.notify("rais tempertur") 

	end

	def self.descend(num)
		TemperatureControl.raise(num)
		#logear
		Notification.notify("desent") 
		
		
	end
end