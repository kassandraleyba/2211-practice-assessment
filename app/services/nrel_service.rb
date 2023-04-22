class NrelService
  def find_nearest_station(location)
    get_url("/api/alt-fuel-stations/v1/nearest.json?location=#{location}") 
    # do |faraday|
    #   faraday.params["location"] = location
    #   faraday.params["fuel_type"] = "ELEC,LPG"
    #   faraday.params["limit"] = "1"
    #   faraday.params["radius"] = "1"
    # end
    # JSON.parse(response.body, symbolize_names: true)
  end
 
  def get_url(url)
    response = conn.get(url)
    parsed = JSON.parse(response.body, symbolize_names: true)
  end

  private

  def conn
    Faraday.new(url: "https://developer.nrel.gov") do |faraday|
      faraday.params["api_key"] = ENV["NREL_API_KEY"]
    end
  end
end