class LightManagement

	def self.turn_on
		LightSwitch.turn_on()
		#logear
		Notification.notify("light on")
	end

	def self.turn_off
		LightSwitch.turn_off()
		#logear
		Notification.notify("light off")

	end
end