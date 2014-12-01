module Container

  attr_reader :passengers

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

  def board_carriage(passenger)
    raise "Carriage is full!" if self.full?
    @passengers << passenger
  end

end