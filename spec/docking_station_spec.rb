require_relative "../lib/docking_station.rb"

describe DockingStation do
  it do
    expect(subject.release_bike).to be_an_instance_of Bike
  end
end

describe Bike do
  it do
    expect(subject.working?).to eq (true)
  end
end
