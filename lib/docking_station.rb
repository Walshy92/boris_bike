require_relative 'bike'

class DockingStation
  attr_reader :bikes
  def initialize
    @bikes = []
  end

  def release_bike
    if bikes.length == 0
      "Nope, none for you."
    else bikes.length >= 1
      bikes.shift
    end
  end

  def docking(bike)
    if bikes.length == 20
      "Docking station full."
    elsif bikes.length >= 0
      bikes << bike
     "Thanks for the bike."
    end
  end
end
