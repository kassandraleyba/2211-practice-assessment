class RoadtripFacade
  # need station name, address, fuel type, access times
  def nearest_station(origin)
    station_info = NrelService.new.find_nearest_station(origin)
    Station.new(station_info)
  end

  def nearest_station_directions(origin, destination)
   directions = MapquestService.new.find_directions(origin, destination)
   Direction.new(directions)
  end

  # attempt 2:
  # station_info = NrelService.new.find_nearest_station(origin)
  # # need key fuel stations 
  # destination = "#{station_info[:fuel_stations].first[:street_address]}, #{station_info[:fuel_stations].first[:city]}, #{station_info[:fuel_stations].first[:state]} #{station_info[:fuel_stations].first[:zip]}"

  # directions = MapquestService.new.find_directions(origin, destination)

  # all_directions = directions[:route][:legs].first[:maneuvers].map do |maneuver|
  #   maneuver[:narrative]
  # end
  # instantiating a new StationServie object
  # calling the service method find_nearest_station
  # passing in the location [from the controller]
 


  # -----------
  # attempt 1:
  # def nearest_station
  #   json = StationService.new.nearest_station("Griffin Coffee")
  #   @stations = json[:fuel_stations].map do |station_data|
  #     Station.new(station_data)
  #   end
  # end

  # def get_directions
  #   json = StationService.new.get_directions("Griffin Coffee", "Turing School")
  #   @directions = json[:route][:legs].map do |direction_data|
  #     Direction.new(direction_data)
  #   end
  # end
end