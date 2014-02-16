class  TemperatureSpreadCalculator
    attr_accessor :weather_data_collection

    def day_with_the_minimum_spread
        unless weather_data_collection.nil?
            list_of_day_with_spread = []
            sorted_weather_data =  weather_data_collection.sort_by{|object| object.spread}
            return sorted_weather_data.first.day
        end
        return nil
    end
end