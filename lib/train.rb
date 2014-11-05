class Train

  def initialize (options = {})
    @passenger = []
    @carriages = []
    @train = []
    @capacity= options.fetch(:capacity, DEFAULT_CAPACITY)
  end

  def capacity
    capacity = capacity
  end
end

  