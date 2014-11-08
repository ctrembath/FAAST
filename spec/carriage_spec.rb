require 'carriage.rb'

  describe Carriage do

    let(:carriage) {Carriage.new(:capacity =>40)}
    let(:train) {double :train}
    let(:passenger) {double :passenger}

    def fill_carriage(passenger)
      40.times {carriage.board_carriage(passenger)}
    end

  it "should have a capacity of 40 passengers" do
    expect(carriage.capacity).to eq(40)
  end

  it "should have no passengers on arrival" do
    expect(carriage.passenger_count).to eq(0)
  end

  it "should not allow any passengers in if it is over capacity" do
    fill_carriage(passenger)
    expect{carriage.board_carriage(passenger)}.to raise_error("Carriage is full!")
  end

  it "should allow passengers to leave carriage" do
    carriage.board_carriage(passenger)
    carriage.alight(passenger)
    expect(carriage.passenger_count).to eq(0)
  end

  it "should allow passengers to enter carriage" do
    carriage.board_carriage(passenger)
    expect(carriage.passenger_count).to eq(1)
  end




end