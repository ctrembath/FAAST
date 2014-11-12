class Passenger


  def initialize(credit=2)
    @in_station= false
    @credit = credit
    end

  def touch_in!
    raise "you don't have enough money to get the train!" if credit < 1
    @enter_station
    pay_fare!
  end

  def in_station?
    @in_station 
  end

  def pay_fare!
    @credit = credit-1
  end

  def touch_out!(passenger)
    @passenger.delete(passenger)
    @in_station
  end

  def enter_station
    @in_station= true
  end

  def credit
    @credit
  end

  def top_up!(value)
    @credit += value
  end

 end