 require 'passenger.rb'


   describe Passenger do

    let(:passenger) { Passenger.new }
    let(:station) { double :station} 
    let(:train) { double :train }



    it "should enter the station" do
        expect(station).to receive(:enter_station)
        passenger.enter_station(station)
    end
   
    it "allows passenger to touch in" do
      expect(station).to receive(:touch_in!).with (passenger)
      station.touch_in!(passenger)
     end

    it "should start with £2 credit on oyster card" do
      expect(passenger.credit).to eq(2)
     end

    it "should cost £1 to touch in" do
      puts passenger.credit
      expect{passenger.touch_in!}.to change{passenger.credit}.by(-1)
    end

    it "allows passengers to touch out" do
      expect(station).to receive(:alight).with (passenger)
      station.alight(passenger)
    end

    it "should be able to top up card" do
      expect(passenger.credit).to eq(2)
      passenger.top_up!(5)
      expect(passenger.credit).to eq(7)
    end

    it "should refuse passenger if they don't have enough credit" do
      2 .times{passenger.touch_in!}
      expect(passenger.credit).to eq(0)
      expect{passenger.touch_in!}.to raise_error(RuntimeError)
    end


end


