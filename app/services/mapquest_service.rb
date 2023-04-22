class MapquestService
  def find_directions(origin, destination)
    get_url("directions/v2/route?from=#{origin}&to=#{destination}")
  end
  
  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def conn
    Faraday.new(url: "https://www.mapquestapi.com/") do |faraday|
      faraday.params["key"] = ENV["MAPQUEST_API_KEY"]
    end
  end
end