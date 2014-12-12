require_relative 'traffic_control'

class Airport

	include TrafficControl

	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity)
	end

end