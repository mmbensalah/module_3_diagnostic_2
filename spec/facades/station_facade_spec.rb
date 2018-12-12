require 'rails_helper'

RSpec.describe 'Station Facade' do
  it 'should return 8 stations for the zip code' do
    VCR.use_cassette('StationFacade') do
      facade = StationFacade.new
      response = facade.stations('LPG,ELEC', 80203)
      expect(response[:total_results]).to eq(2)
      expect(response[:station_counts][:total]).to eq(8)
    end
  end
end
