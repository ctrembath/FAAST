require'container.rb'
require'station.rb'

  describe Station do

    let(:station) { Station.new(:capacity => 5) }
    let(:passenger) { Passenger.new}
    let(:train) {double :train}


  it "has a capacity of" do
    expect(station.capacity).to eq(10)
  end

  it "allows passengers to enter" do
    passenger= Passenger.new
    station.enter_station(passenger)
    expect(station.passenger_count).to eq(1)
  end

  it "allows passengers to leave station" do
    station.enter_station(passenger)
    station.leave_station!(passenger)
    expect(station.passenger_count).to eq(0)
  end


  it "should allow trains to arrive in it" do
    station.arrive(train)
    expect(station.train_count).to eq(1)
  end

  it "should allow train to depart" do
    station.arrive(train)
    station.depart(train)
    expect(station.train_count).to eq(0)
  end


 # it "should know if it is full of passengers" do
  #   station= Station.new
  #   station.fill_station!
  #   expect(station.is_full?).to be true

  # end
  #Allows trains to take passengers (-1)
  #allow trains to deliver passengers (+1)
end

