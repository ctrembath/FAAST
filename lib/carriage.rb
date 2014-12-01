require_relative "container"

class Carriage

  include Container

  attr_accessor :passengers

  DEFAULT_CAPACITY = 40

  def initialize(options = {})
      @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
      @passengers = []
  end

  def board_carriage(passenger)
    raise "Carriage is full!" if self.full?
   @passengers << passenger
  end

end

