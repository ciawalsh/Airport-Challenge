require './lib/airport'
require './lib/traffic_control'
require './lib/plane'

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
      fill_airport(100, airport)
      expect(lambda { airport.land(plane) }).to raise_error(RuntimeError, 'Not able to land, airport full!')
    end

    it 'should know that there are no planes to take off if airport is empty' do
      fill_airport(0, airport)
      expect(lambda { airport.take_off(plane) }).to raise_error(RuntimeError, 'No planes to take off!')
    end

    # Include a weather condition using a module.
    # The weather must be random and only have two states "sunny" or "stormy".
    # Try and take off a plane, but if the weather is stormy, the plane can not take off and must remain in the airport.
    # 
    # This will require stubbing to stop the random return of the weather.
    # If the airport has a weather condition of stormy,
    # the plane can not land, and must not be in the airport

    context 'weather conditions' do

      it 'a plane cannot take off when there is a storm brewing' do
        airport.land(plane)
        airport.weather == 95
        airport.take_off_if_sunny(plane)
        expect(airport.plane_count).to eq(1)
      end

      it 'a plane cannot land in the middle of a storm' do

      end
    end
  end
end

