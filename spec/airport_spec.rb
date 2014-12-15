require './lib/airport'
require './lib/traffic_control'
require './lib/plane'
require './lib/weather'

describe Airport do

  def fill_airport(number_of_times, airport)
    number_of_times.times { airport.land(Plane.new) }
  end

  let(:airport) { Airport.new }
  let(:plane) { Plane.new }

  context 'taking off and landing' do

    it 'a plane can land' do
      airport.land(plane)
      expect(airport.plane_count).to eq(1)
    end

    it 'a plane can take off' do
      airport.land(plane)
      airport.take_off(plane)
      expect(airport.plane_count).to eq(0)
    end
    
  end

  context 'traffic control' do

    it 'a plane cannot land if the airport is full' do
      fill_airport(6, airport)
      expect(lambda { airport.land(plane) }).to raise_error(RuntimeError, 'Not able to land, airport full!')
    end

    it 'should know that there are no planes to take off if airport is empty' do
      fill_airport(0, airport)
      expect(lambda { airport.take_off(plane) }).to raise_error(RuntimeError, 'No planes to take off!')
    end

    context 'weather conditions' do

      it 'a plane cannot take off when there is a storm brewing' do
        airport.land(plane)
        allow(airport).to receive(:weather).and_return(95)
        airport.take_off_if_sunny(plane)
        expect(airport.plane_count).to eq(1)
      end

      it 'a plane cannot land in the middle of a storm' do
        allow(airport).to receive(:weather).and_return(95)
        airport.land_if_sunny(plane)
        expect(airport.plane_count).to eq(0)
      end

    end

  end

end

