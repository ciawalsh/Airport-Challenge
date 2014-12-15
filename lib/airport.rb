require_relative 'traffic_control'
require_relative 'weather'

class Airport

	include TrafficControl
	include Weather

	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity)
	end

	def take_off_if_sunny(plane)
		weather == "Sunny" ? take_off(plane) : "Weather is too bad to take off."
	end

	def land_if_sunny(plane)
		weather == "Sunny" ? land? : "Weather is too bad to land."
	end

	def land?
		full? ? full : land(plane)
	end

	def full
		until empty? 
			planes.each { |plane| take_off_if_sunny(plane) }
		end
	end

	def check_status
    	planes[0].in_air?
  	end

end