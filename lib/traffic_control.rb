module TrafficControl

	DEFAULT_CAPACITY = 100

	def planes
		@planes ||= []
	end

	def capacity
		@capacity ||= DEFAULT_CAPACITY
	end

	def capacity=(value)
		@capacity = value
	end

	def land(plane)
		raise 'Not able to land, airport full!' if full?
		plane.land!
		planes << plane
	end

	def take_off(plane)
		raise 'No planes to take off!' if empty?
		planes.delete(plane)
		plane.take_off!
	end

	def plane_count
		planes.count
	end

	def full?
		plane_count == capacity
	end

	def empty?
		plane_count == 0
	end

end