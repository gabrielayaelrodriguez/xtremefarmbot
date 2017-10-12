class PlantSector < ApplicationRecord
	belongs_to :plant

	validate :reset_time, :on => [:update]

	def reset_time
		self.elapsed_time = 0 unless self.changes["plant_id"].nil?
	end
end
