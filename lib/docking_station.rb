require_relative 'bike'

class DockingStation
  attr_reader :bikes
  def initialize
    @bikes = []
  end

  def release_bike
    raise RuntimeError if @bikes.length == 0
    @bikes.shift
  end

  def docking(bike)
    raise "TOOO MANY" if @bikes.length == 20
    @bikes << bike
    "Thanks for the bike."
  end
end
