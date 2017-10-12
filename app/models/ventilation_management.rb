class VentilationManagement

	def self.start_fan
		Fan.turn_on()
		#logear
		Notification.notify("Fan Turned On") 

	end

	def self.stop_fan
		Fan.turn_off()
		#logear
		Notification.notify("Fan Turned Off") 

	end
end