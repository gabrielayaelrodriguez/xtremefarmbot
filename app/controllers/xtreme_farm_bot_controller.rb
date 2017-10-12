class XtremeFarmBotController < ApplicationController

	def work


		# luz

		if (Greenhouse.first.turn_on_light_time = Time.now.hour)
			LightManagement.turn_on()
		elsif (Greenhouse.first.turn_off_light_time = Time.now.hour)
			LightManagement.turn_off()
		end
		
		# ventilar

		VentilationManagement.start_fan()
		sleep 0.1
		VentilationManagement.stop_fan()

		if (PlagueSensor.sense() == 1)
			InsecticideIrrigation.irrigate()
		end

		prom_tempe = 0
		prom_humi = 0

		PlantSector.all.each do | sector |

			prom_tempe += sector.plant.temperature
			prom_humi += sector.plant.humidity

			if (sector.elapsed_time == sector.plant.growth_time)
				#StatusMailer.status_email(Notification.notify("se mando meil x kosecha lista")).deliver_now
				puts "ola"
			else

				m = SoilMoistureSensor.sense(sector)
				if (m < sector.plant.soil_moisture)
					#regar
					WaterIrrigation.irrigate(sector, sector.plant.soil_moisture - m)
				end
				# nutrients

				needed = []

				nutrients = SoilNutrientsSensor.sense(sector)

				if (nutrients[:magnesium] < sector.plant.magnesium)
					needed.push({:magnesium => sector.plant.magnesium - nutrients[:magnesium]})
				end
				if (nutrients[:potassium] < sector.plant.potassium)
					needed.push({:potassium => sector.plant.potassium - nutrients[:potassium]})
				end
				if (nutrients[:iron] < sector.plant.iron)
					needed.push({:iron => sector.plant.iron - nutrients[:iron]})
				end
				NutrientsIrrigation.irrigate(sector, needed) unless needed.empty?
				
			end
		end

		# temperatura

		prom_tempe /= PlantSector.count
		temp = GreenhouseTemperatureSensor.sense()

		if (temp > prom_tempe )
			TemperatureManagement.descend(temp - prom_tempe)
		else
			TemperatureManagement.raise(prom_tempe - temp)
		end
		# humedad

		prom_humi /= PlantSector.count
		humi = GreenhouseHumiditySensor.sense()
		if (humi < prom_humi )
			HumidityManagement.humidify(prom_humi - humi)
		end
		redirect_to root_path
	end



		def environment_aging
			PlantSector.all.each do | sector |
				sector.update(:elapsed_time => sector.elapsed_time + 1,
							  :moisture => sector.moisture - rand(0..sector.moisture),
							  :magnesium => sector.magnesium - rand(0..sector.magnesium),
							  :potassium => sector.potassium - rand(0..sector.potassium),
							  :iron => sector.iron - rand(0..sector.iron)
							  )

			end
			redirect_to root_path
		end
end

