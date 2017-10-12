class LightManagement

	def self.turn_on
		LightSwitch.turn_on()
		#logear
		Notification.notify("Light Turned On")
	end

	def self.turn_off
		LightSwitch.turn_off()
		#logear
		Notification.notify("Light Turned Off")

	end
end