module Weather

	def weather
		if rand(1-100) < 90
			"Sunny"
		else
			"Stormy"
		end
	end

end
