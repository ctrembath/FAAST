class Passenger

  DEFAULT_CREDIT = 2
  MINIMUM_CREDIT = 1
  DEFAULT_TICKET_PRICE = 1

  attr_reader :credit

  def initialize(credit=DEFAULT_CREDIT)
    @in_station= false
    @credit = credit
  end

  def touch_in!
    raise "you don't have enough money to get the train!" if insufficient_credit?
    pay_fare!
  end

  def insufficient_credit?
    credit < MINIMUM_CREDIT
  end

  def pay_fare!
    @credit = credit- DEFAULT_TICKET_PRICE
  end

  def enter_station(station)
    station.enter_station(self)
  end

  def top_up!(value)
    @credit += value
  end

 end