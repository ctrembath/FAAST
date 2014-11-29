require'container.rb'
require'station.rb'

  describe Station do

    let(:station) { Station.new(:capacity => 20) }
    let(:passenger) { Passenger.new}
    let(:train) {double :train}


    it "has a capacity of" do
      expect(station.capacity).to eq(20)
    end

    it "allows passengers to enter" do
      passenger= Passenger.new
      station.enter_station(passenger)
      expect(station.passenger_count).to eq(1)
    end

    it "allows passengers to leave station" do
      station.enter_station(passenger)
      station.alight(passenger)
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

end

