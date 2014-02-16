require 'spec_helper'

describe WeatherData do 
	it "should calculate the temprature spread" do
		weather_data = WeatherData.new({:day => 1, :max_temprature => 88, :min_temprature => 59})
		weather_data.calculate_spread.should eql(29)
	end

end
