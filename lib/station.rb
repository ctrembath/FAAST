require_relative'container'

class Station

  include Container

  attr_reader = :passengers

  DEFAULT_CAPACITY = 5

  def initialize (options = {})
    @passengers = []
    @trains = []
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
  end

  def enter_station(passenger)
    @passengers << passenger
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