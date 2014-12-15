module Weather

	def weather
		if rand_num < 90
			"Sunny"
		else
			"Stormy"
		end
	end

	def rand_num
		rand(1-100)
	end

end
