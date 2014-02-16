require 'spec_helper'
 
describe TemperatureSpreadCalculator do
 it "should return hello" do
	loopy = TempratureSpreadCalculator.new
	loopy.chop.should eql("hell0")
 end
end
