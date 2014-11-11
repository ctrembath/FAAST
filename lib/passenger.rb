class Passenger

  def initialize
    @in_station= false
    have_money= false
    end

  def touch_in!(passenger)
    raise "station is full" if full?
    @passenger << passenger
  end

  def in_station
    @in_station
  end

  def touch_out!(passenger)
    @passenger.delete(passenger)
  end

 

 end