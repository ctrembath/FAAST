module Container

  def capacity
    @capacity ||=DEFAULT_CAPACITY
  end

   def full?
    passenger_count == capacity
  end

  def passenger_count
    @passengers.count
  end

  def enter_station(station)
    station.enter_station(self)
  end

  def alight(passenger)
    @passengers.delete(passenger)
  end

end