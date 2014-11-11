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

  def enter_station!(passenger)
    @passenger << passenger
  end

  def leave_station!(passenger)
    @passenger.delete(passenger)
    
  end

  def full
    @passengers_count == @capacity
  end

  def train_count
    @trains.count
  end

  def arrive(train)
    @trains << train
  end

  def depart(train)
    @trains.delete(train)
  end



end