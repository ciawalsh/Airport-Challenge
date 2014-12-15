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
			if !full? 
				land(plane)
			else
				full
			end
		else
			"Weather is too bad to land."
		end
	end

	def full
		if full? 
			until empty? 
				planes.each { |plane| take_off_if_sunny(plane) }
			end
		end
	end

	def check_status
    	planes[0].in_air?
  	end

end