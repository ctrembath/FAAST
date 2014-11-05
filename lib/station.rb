class Station

  # def initialize 
  #   station
  # end
  DEFAULT_CAPACITY = 5

  def initialize (options = {})
    @passenger = []
    @trains = []
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
  end

  def passenger_count
    @passenger.count
  end

  def capacity
    @capacity= 10
  end

  def touch_in!(passenger)
    raise "station is full" if full?
    @passenger << passenger
  end

  def touch_out!(passenger)
    @passenger.delete(passenger)
  end

  def is_full?
    @passengers_count == @capacity
  end


  def fill_station!(station)
    20.times { station.touch_in!(passenger) }
  end

end