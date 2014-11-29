 require 'train'

 describe Train do

      let(:train) { Train.new }
      let(:passenger) { double :passenger }
      let(:station) { double :station }
      let(:carriage) { double :carriage }


    it "should have a default capacity of 3 carriages" do
      expect(train.capacity).to eq(4)
    end

    it "should be able to add carriages" do
      train.add_carriage(carriage)
      expect(train.carriage_count).to eq(1)
    end

    it "should be able to remove carriages" do
      train.add_carriage(carriage)
      expect(train.carriage_count).to eq(1)
      train.remove_carriage(carriage)
      expect(train.carriage_count).to eq(0)
    end


end