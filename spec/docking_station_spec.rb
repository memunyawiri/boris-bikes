require './lib/docking_station'

describe DockingStation do
  it {is_expected.to respond_to :release_bike}
  it 'releases working bikes' do
    bike = Bike.new
    subject.dock(bike)
    bike =subject.release_bike
    expect(bike).to be_working
  end
  it {is_expected.to respond_to(:dock).with(1).argument}
  it 'docks bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  describe '#release_bike' do
  it "releases a bike" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
  end

  it "raises an error when there are no bikes available" do
    expect { subject.release_bike }.to raise_error "No bikes available"
  end
end

  describe "#docks" do
    it "doesn't accept more bikes than station capacity" do
    bike = Bike.new
    subject.dock(bike)
    expect { subject.dock(bike) }.to raise_error "Sorry, this dock is in use"
  end
end

end
