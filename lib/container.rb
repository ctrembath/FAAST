module Container

  def capacity
    @capacity = 140
  end

  def touch_in
    raise "station is full" if full?
    passengers << passenger
    end
  end

  def touch_out(passenger)
    passenger.delete(passenger)

  def full?
    passenger_count == @capacity
  end

  def passenger_count
    passengers.count
  end

  def is_full?
    @passengers_count == @capacity
  end

end