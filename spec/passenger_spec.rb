 require 'passenger.rb'


   describe Passenger do

    let(:passenger) { Passenger.new }
    let(:station) { double :station} 
    let(:train) { double :train }

    it "can enter the station" do
      expect(station).to receive(:enter_station).with(passenger)
      passenger.enter_station(station)
    end

    it "should start with £2 credit on oyster card" do
      expect(passenger.credit).to eq(2)
     end

    it "should cost £1 to pay fare" do
      expect{passenger.pay_fare!}.to change{passenger.credit}.by(-1)
    end

     it "should cost £1 to touch in" do
      expect{passenger.touch_in!}.to change{passenger.credit}.by(-1)
    end

    it "should be able to top up card" do
      expect(passenger.credit).to eq(2)
      passenger.top_up!(5)
      expect(passenger.credit).to eq(7)
    end

    it "should refuse passenger if they don't have enough credit" do
      2.times{passenger.touch_in!}
      expect(passenger.credit).to eq(0)
      expect{passenger.touch_in!}.to raise_error("you don't have enough money to get the train!")
    end


end


