require 'rails_helper'

RSpec.describe Station do
  it "exists" do
    data = { fuel_stations: [{
        station_name: "UDR",
        street_address: "800 Acoma St",
        city: "Denver",
        state: "CO",
        zip: "80204",
        fuel_type_code: "ELEC",
        access_days_time: "24 hours daily",
        distance: "0.31422"
      }]
    }

    station = Station.new(data)

    expect(station).to be_a(Station)
    expect(station.name).to eq("UDR")
    expect(station.street_address).to eq("800 Acoma St")
    expect(station.city).to eq("Denver")
    expect(station.state).to eq("CO")
    expect(station.zip).to eq("80204")
    expect(station.fuel_type).to eq("ELEC")
    expect(station.access_times).to eq("24 hours daily")
    expect(station.distance).to eq("0.31422")
  end
end