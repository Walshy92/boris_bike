require 'docking_station.rb'

describe Bike do
  it "expects bike to be working" do
    expect(subject.working?).to eq (true)
  end

  it do
    is_expected.to respond_to(:working?)
  end
end
