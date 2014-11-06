 require 'passenger.rb'

   describe Passenger do

    let(:passenger) { Passenger.new }
    let(:station) { Station.new } 
    let(:train) { Train.new }

    it "has no money before entering station" do
      passenger= Passenger.new
      expect(passenger.have_money).to be false
    end

# Touch In


# Board Train at Station



# Alight Train at Station



# Touch Out




   end