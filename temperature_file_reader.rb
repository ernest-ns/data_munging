require_relative './weather_data'
class TemperatureFileReader
    def read file_name
        file_contents = []
        File.open(file_name, "r") do |infile|
            while (line = infile.gets)			
                file_contents << line.chomp
            end
        end
        return file_contents
    end

    def extract_data file_contents
        data_for_spread = []
        file_contents.each do |line|
            line = sanitize_data line
            words_array = line.split(" ")
            if !words_array.nil? && words_array.first =~ /\d/
                data_for_spread << WeatherData.new({
                    :day => words_array[0].to_i, 
                    :max_temprature => words_array[1].to_i, 
                    :min_temprature => words_array[2].to_i
                })
            end
        end
        return data_for_spread

    end

    def parse_and_fetch_data_from file_name
        file_contents = self.read file_name
        parsed_data = self.extract_data file_contents
    end

    def sanitize_data line
        line = line.strip
        line = line.gsub(/\s+/, " ")
        line = line.gsub(/\*/, "")
    end
end
