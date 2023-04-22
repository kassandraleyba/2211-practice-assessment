class Direction
  attr_reader :travel_time, 
              :directions

  def initialize(data)
    @travel_time = data[:route][:formattedTime]
    @directions = data[:route][:legs].first[:maneuvers].map do |maneuver|
      maneuver[:narrative]
    end
  end
end