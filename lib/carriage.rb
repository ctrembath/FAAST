class Carriage

  attr_accessor :passenger

  DEFAULT_CAPACITY = 40

  def initialize(options = {})
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
    @passenger = []
  end

  def capacity
    @capacity
  end

  def board_carriage(passenger)
    raise "Carriage is full!" if full?
   @passenger << passenger
  end

  def full?
    @passenger.count == @capacity
  end

  def alight(passenger)
    @passenger.delete(passenger)
  end

  def passenger_count
    @passenger.count
  end



end