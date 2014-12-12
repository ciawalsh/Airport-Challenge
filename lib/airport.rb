require_relative 'traffic_control'
require_relative 'weather'

class Airport

	include TrafficControl
	include Weather

	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity)
	end

	def take_off_if_sunny(plane)
		if weather == "Sunny"
			take_off(plane)
		else
			"Weather is too bad to take off."
		end
	end

	def land_if_sunny(plane)
		if weather == "Sunny"
			land(plane)
		else
			"Weather is too bad to land."
		end
	end

end