class DockingStation
  def release_bike
    bike = Bike.new
  end
  def docking
    @counter = 0
    if @counter == 0
      @counter += 1
      return 0
    elsif @counter == 1
      return "docking station full"
    end
  end
end

class Bike
  def working?
    true
  end
end
