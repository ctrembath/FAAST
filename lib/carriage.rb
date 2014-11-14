class Carriage

  attr_accessor :passenger

  DEFAULT_CAPACITY = 40

  def initialize(options = {})
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
    @passengers = []
  end

  def capacity
    @capacity
  end

  def board_carriage(passenger)
    raise "Carriage is full!" if full?
   @passengers << passenger
  end

  def full?
    @passengers.count == @capacity
  end

  def alight(passenger)
    @passengers.delete(passenger)
  end

  def passenger_count
    @passengers.count
  end



end