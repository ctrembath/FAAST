class Station

  # def initialize 
  #   station
  # end
  DEFAULT_CAPACITY = 300

  def initialize (options = {})
    @passenger = []
    @trains = []
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)

  end

  def passenger_count
    @passenger.count
  end

  def capacity
    @capacity= 300
  end

  def touch_in(passenger)
    @passenger << passenger
  end

end