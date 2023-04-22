class Station
  attr_reader :name, 
              :street_address, 
              :city, 
              :state, 
              :zip, 
              :fuel_type, 
              :access_times,
              :distance

  def initialize(data)
    @name = data[:fuel_stations].first[:station_name]
    @street_address = data[:fuel_stations].first[:street_address]
    @city = data[:fuel_stations].first[:city]
    @state = data[:fuel_stations].first[:state]
    @zip = data[:fuel_stations].first[:zip]
    @fuel_type = data[:fuel_stations].first[:fuel_type_code]
    @access_times = data[:fuel_stations].first[:access_days_time]
    @distance = data[:fuel_stations].first[:distance]
    #making an object of closest station with all the attributes
  end
end