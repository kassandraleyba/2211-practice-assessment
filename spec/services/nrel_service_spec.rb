require 'rails_helper'

RSpec.describe NrelService do
  context "instance methods" do
    it "can get services" do
      search = NrelService.new.find_nearest_station("5224 W 25th Ave, Denver, CO 80214")
      
      expect(search).to be_a(Hash)
    end
  end
end