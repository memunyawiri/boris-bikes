require_relative 'bike'

class DockingStation
  attr_reader :bike
 def release_bike
   
 end

 def dock(bike)
   @bike = bike
 end
 end

docking_station = DockingStation.new
