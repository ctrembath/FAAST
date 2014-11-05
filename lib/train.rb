class Train

  def initialize (options = {})
    @passenger = []
    @carriages = []
    @train = []
    @capacity= options.fetch(:capacity, DEFAULT_CAPACITY)
  end

end

  