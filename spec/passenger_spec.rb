require 'passenger.rb'

  describe Passenger do

    let(:passenger) { Passenger.new }
    let(:station) { double :station } 
    let(:train) { Train.new }

    it "touches in when they enter the station" do
      passenger=Passenger.new
      expect(passenger).to (station)
    end
# Touch In


# Board Train at Station



# Alight Train at Station



# Touch Out




  end