class VentilationManagement

	def self.start_fan
		Fan.turn_on()
		#logear
		Notification.notify("fan on") 

	end

	def self.stop_fan
		Fan.turn_off()
		#logear
		Notification.notify("fan off") 

	end
end