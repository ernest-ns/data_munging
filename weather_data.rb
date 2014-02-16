class WeatherData
	attr_accessor :day, :max_temprature, :min_temprature, :spread
	def initialize weather_data
		self.day = weather_data[:day]
		self.max_temprature = weather_data[:max_temprature]
		self.min_temprature = weather_data[:min_temprature]
		self.spread = self.calculate_spread
	end

	def calculate_spread
		return self.max_temprature - self.min_temprature
	end
end