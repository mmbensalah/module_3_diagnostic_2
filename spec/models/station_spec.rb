require 'rails_helper'

RSpec.describe 'Station' do
  it 'exists' do
    station = Station.new
    expect(station).to be_an_instance_of(Station)
  end
end
