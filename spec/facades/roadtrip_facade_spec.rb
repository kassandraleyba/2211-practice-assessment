require 'rails_helper'

RSpec.describe RoadtripFacade do
  it "returns a station object" do
    location = "5224 W 25th Ave, Denver, CO 80214"
    station = RoadtripFacade.new.nearest_station(location)

    expect(station).to be_a(Station)
    expect(station.name).to eq("Shake Shack - Tesla Supercharger")
    expect(station.street_address).to eq("2027 Depew St")
    expect(station.city).to eq("Denver")
    expect(station.state).to eq("CO")
    expect(station.zip).to eq("80214")
    expect(station.fuel_type).to eq("ELEC")
    expect(station.access_times).to eq("24 hours daily")
    expect(station.distance).to eq(0.38564)
  end
end