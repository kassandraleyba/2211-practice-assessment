require 'rails_helper'

RSpec.describe Direction do
  it "exists" do
    data = {
      route: {
        :formattedTime=>"00:01:00",
        :legs => [{
          :maneuvers => [{
            narrative: "Head east on W 25th Ave. Go for 246 ft."
          }]
        }]
      }
    }

    direction = Direction.new(data)

    expect(direction).to be_a(Direction)
    expect(direction.travel_time).to eq("00:01:00")
    expect(direction.directions).to eq(["Head east on W 25th Ave. Go for 246 ft."])
  end
end