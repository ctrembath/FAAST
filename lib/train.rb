require_relative 'container'

class Train
  include Container
  
  def initialize(capacity=4)
    @capacity = capacity
    @carriages = []
  end

  def carriage_count
    @carriages.count
  end

  def add_carriage(carriage)
    @carriages << carriage
  end

  def remove_carriage(carriage)
    @carriages.delete(carriage)
  end

end

  