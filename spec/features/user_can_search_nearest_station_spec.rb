require 'rails_helper'

RSpec.describe "A user can search for nearest station" do
  scenario "I see the station name, address, fuel type and times" do
    visit '/'

    select "Griffin Coffee", from: :location
    click_on "Find Nearest Station"

    expect(current_path).to eq("/search")
    # should see closest electric fuel station to user
    expect(page).to have_content("Station Name: Shake Shack - Tesla Supercharger")
    expect(page).to have_content("Address: 2027 Depew St, Denver, CO 80214")
    expect(page).to have_content("Fuel Type: ELEC")
    expect(page).to have_content("Access Times: 24 hours daily")
  end

  scenario "I see the distance of the nearest station, travel time, and directions" do
    visit '/'

    select "Griffin Coffee", from: :location
    click_on "Find Nearest Station"

    expect(current_path).to eq("/search")
    expect(page).to have_content("Distance: 0.4 miles")
    expect(page).to have_content("Travel Time: 00:01:54 min")
    expect(page).to have_content("Directions:")
    expect(page).to have_content("Head east on W 25th Ave. Go for 246 ft.\nTurn right onto Sheridan Blvd (CO-95). Go for 0.4 mi.\nTurn right onto W 20th Ave. Go for 0.2 mi.\nTurn right onto Depew St. Go for 174 ft.\nArrive at Depew St.")
  end
end