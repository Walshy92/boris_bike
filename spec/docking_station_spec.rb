require_relative '../lib/docking_station.rb'
require 'bike'

describe DockingStation do

  context '#release_bike' do
    it 'responds to release_bike' do
      is_expected.to respond_to(:release_bike)
    end

    it 'returns docked bikes' do
      subject.docking(Bike.new)
      expect(subject.release_bike).to be_instance_of(Bike)
    end

    it 'Raises an error if there are no bikes' do
      expect{ subject.release_bike }.to raise_error(RuntimeError)
    end
  end

  context '#docking' do
    it 'accepts a bike' do
      expect(subject.docking(Bike.new)).to eq("Thanks for the bike.")
    end

    it 'checks if docking station is full' do
      20.times { subject.docking(Bike.new) }
      expect(subject.docking(Bike.new)).to eq('Docking station full.')
    end

    it 'can dock bike' do
      expect { subject.docking(Bike.new) }.to change { subject.bikes.length }.by(1)
    end
  end
end
