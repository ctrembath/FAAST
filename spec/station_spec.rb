require'container.rb'
require'station.rb'

  describe Station do

    let(:station) { Station.new(:capacity => 10) }
    let(:passenger) { Passenger.new}
    let(:train) {  Train.new }

  #Has a capacity
  it "has a capacity of" do
    expect(station.capacity).to eq(10)
  end

  it "allows passengers to touch in" do
    passenger= Passenger.new
    station.touch_in!(passenger)
    expect(station.passenger_count).to eq(1)
  end

  #allows passengers to touch out (-1)

  it "allows passengers to touch out" do
    station.touch_in!(passenger)
    station.touch_out!(passenger)
    expect(station.passenger_count).to eq(0)
  end

  it "shouldn't allow passengers in if it is full" do
   fill_station!(station)
  end

 # it "should know if it is full of passengers" do
  #   station= Station.new
  #   station.fill_station!
  #   expect(station.is_full?).to be true

  # end
  #Allows trains to take passengers (-1)
  #allow trains to deliver passengers (+1)
end

