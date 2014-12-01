require_relative "container"

class Carriage

  include Container

  DEFAULT_CAPACITY = 40

  def initialize(options = {})
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
    @passengers = []
  end

end

