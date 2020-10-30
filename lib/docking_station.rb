require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bikes
  def initialize
    @bikes = []
  end

  def release_bike
    raise RuntimeError if @bikes.length == 0
    @bikes.shift
  end

  def docking(bike)
    raise "TOOO MANY" if full?
    @bikes << bike
    "Thanks for the bike."
  end

  private

  def full?
    @bikes.length >= DEFAULT_CAPACITY
  end

end
