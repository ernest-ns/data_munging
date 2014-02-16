describe TemperatureFileReader do
	let(:temperature_spread_calculator){TemperatureFileReader.new}
	describe "read" do
		it "should read the file and return an array of string" do		
			temperature_spread_calculator.read("weather.dat").first.should eql("  Dy MxT   MnT   AvT   HDDay  AvDP 1HrP TPcpn WxType PDir AvSp Dir MxS SkyC MxR MnR AvSLP")
		end
	end
	describe "extract data" do
		it "should return an hash with only the day Max temp and the min temp" do
			file_contents = temperature_spread_calculator.read("weather.dat")
			data_for_spread = temperature_spread_calculator.extract_data file_contents
			data_for_spread[0].day.should eql(1)
			data_for_spread[0].max_temprature.should eql(88)
			data_for_spread[0].min_temprature.should eql(59)
		end
	end
end