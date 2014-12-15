require_relative 'traffic_control'

class Plane

	include TrafficControl

	def initialize
		take_off!
	end

	def flying?
		@flying
	end

	def take_off!
		@flying = true
	end

	def land!
		@flying = false
	end

	def in_air?
		@flying == true ? "Flying" : "Landed"
	end

end
