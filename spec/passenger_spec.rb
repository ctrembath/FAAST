 require 'passenger.rb'


   describe Passenger do

    let(:passenger) { Passenger.new }
    let(:station) { double :station} 
    let(:train) { double :train }

    it "should not be in station" do
      expect(passenger.in_station).to be false
    end

 
   # it "allows passenger to touch in" do
   #  expect(station).to receive(:touch_in!).with (passenger)
   #  passenger.touch_in!
   # end

  # it "allows passengers to touch in" do
  #   station.touch_in!(passenger)
  #   expect(:station.passenger_count).to eq(1)
  #  end

  # it "allows passengers to touch out" do
  #   station.touch_out!(passenger)
  #   expect(station.passenger_count).to eq(0)
  # end




end


# Board Train at Station



# Alight Train at Station



# Touch Out

