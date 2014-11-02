require'station.rb'


  describe Station do

    let(:station) { Station.new }
    let(:passenger) { double :passenger }
    let(:train) { double :train }

  #Has a capacity
  it "has a capacity of" do
    expect(station.capacity).to eq(300)
  end


  #allows passengers to touch in (+1)



  #allows passengers to touch out (-1)



  #Allows trains to take passengers (-1)



  #allow trains to deliver passengers (+1)

end
