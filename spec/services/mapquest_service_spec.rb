require 'rails_helper'

RSpec.describe MapquestService do
  context "instance methods" do
    it "can get directions" do
      directions = MapquestService.new.find_directions("5224 W 25th Ave, Denver, CO 80214", "2027 Depew St, Denver, CO 80214")

      expect(directions).to be_a(Hash)
    end
  end
end