require 'rails_helper'

RSpec.describe 'Station Facade' do
  it 'should return 8 stations for the zip code' do
    VCR.use_cassette('StationFacade') do
      facade = StationFacade.new
      response = facade.stations(80203, 'LPG,ELEC')

      expect(response.count).to eq(10)

      expect(response[0]).to be_an_instance_of(Station)
      expect(response[0].access).to eq("24 hours daily")
      expect(response[0].distance).to eq(0.31422)
      expect(response[0].fuel_type).to eq("ELEC")
      expect(response[0].name).to eq("UDR")
      expect(response[0].state).to eq("CO")
      expect(response[0].street_address).to eq("800 Acoma St")
      expect(response[0].zip).to eq("80204")
    end
  end
end
