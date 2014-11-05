module Container

  def capacity
    @capacity = 140
  end

  def touch_in
    raise "station is full" if full?
    passengers << passenger
    end
  end
  
  def full?
    passenger_count == @capacity
  end

  def passenger_count
    passengers.count
  end