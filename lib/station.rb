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


  def capacity
    @capacity= 10
  end


end