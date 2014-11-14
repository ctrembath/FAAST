class Passenger


  def initialize(credit=2)
    @in_station= false
    @credit = credit
    end

  def touch_in!
    raise "you don't have enough money to get the train!" if credit < 1
    pay_fare!
  end


  def pay_fare!
    @credit = credit-1
  end

  def touch_out!(passenger)
    @passenger.delete(passenger)
    @in_station
  end

  def enter_station(station)
    station.enter_station(self)
  end

  def credit
    @credit
  end

  def top_up!(value)
    @credit += value
  end

 end