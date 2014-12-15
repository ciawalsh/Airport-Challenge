require './lib/plane'
require './lib/airport'
require './lib/traffic_control'

describe Plane do

  let(:plane) { Plane.new }
  let(:airport) { Airport.new }

  it 'has a flying status when created' do
    expect(plane.flying?).to eq(true)
  end

  it 'has a flying status when in the air' do
    expect(plane.in_air?).to eq("Flying")
  end

  it 'can take off' do
    plane.land!
    plane.take_off!
    expect(plane.in_air?).to eq("Flying")
  end

  it 'changes it\'s status to flying after taking off' do
    plane.land!
    expect(plane.in_air?).to eq("Landed")
    plane.take_off!
    expect(plane.in_air?).to eq("Flying")
  end

end

describe "The grand finale (last spec)" do

  def fill_airport(number_of_times, airport)
    number_of_times.times { airport.land(Plane.new) }
  end


  let(:plane) { Plane.new }
  let(:airport) { Airport.new }

  it 'all planes can land and all planes can take off' do
    fill_airport(6, airport)
    expect(airport.check_status).to eq("Landed")
    airport.full
    expect(airport.plane_count).to eq(0)
    expect(plane.in_air?).to eq("Flying")
  end
  
end