module Weather

	def weather
		rand_num < 90 ? "Sunny" : "Stormy"
	end

	def rand_num
		rand(1-100)
	end

end
