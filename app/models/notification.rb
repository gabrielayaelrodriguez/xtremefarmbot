class Notification

	def self.notify(text)
		#logear
		ActionEntry.create(description: text)
	end
end