class SearchController < ApplicationController
  def index
    # need station name, address, fuel type, access times
    @station_info = RoadtripFacade.new.nearest_station(params[:location])
    # binding.pry
    address = "#{@station_info.street_address}, #{@station_info.city}, #{@station_info.state} #{@station_info.zip}"
    @station_directions = RoadtripFacade.new.nearest_station_directions(params[:location], address)
    # binding.pry
  end
end

# notes:
# instantiating a new StationFacade object
# calling on the facade method, nearest station
# passing in a location through params (string data type)