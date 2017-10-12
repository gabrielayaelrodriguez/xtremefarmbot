class XtremeFarmBot < ApplicationRecord
	has_one :soil_humidity_sensor
	has_one :soil_nutrients_sensor
	has_one :greenhouse_temperature_sensor
	has_one :greenhouse_humidity_sensor
	has_one :greenhouse
end
