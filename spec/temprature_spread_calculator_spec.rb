require 'spec_helper'
 
describe TemperatureSpreadCalculator do
	describe "day with the mininmum spread" do
		it "should return the day which has the mininmum spread" do
			temperature_spread_calculator = TemperatureSpreadCalculator.new
			weather_data_one = WeatherData.new({:day => 1, :max_temprature => 88, :min_temprature => 59})
			weather_data_two = WeatherData.new({:day => 2, :max_temprature => 79, :min_temprature => 63})
			weather_data_three = WeatherData.new({:day => 3, :max_temprature => 77, :min_temprature => 55})
			temperature_spread_calculator.weather_data_collection  = [weather_data_one, weather_data_two, weather_data_three]
			temperature_spread_calculator.day_with_the_minimum_spread.should eql(weather_data_two.day)	
		end
	end
end
