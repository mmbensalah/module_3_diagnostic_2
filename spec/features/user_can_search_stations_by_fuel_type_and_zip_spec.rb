require 'rails_helper'

RSpec.describe 'User searches for' do
  it 'electric and propane stations within 6 miles' do
    VCR.use_cassette('StationFacade') do
      visit '/'

      fill_in :q, with: '80203'

      click_on 'Locate'

      expect(current_path).to eq('/search')

      within('.station') do
        expect(page).to have_content("24 hours daily")
        expect(page).to have_content("0.31422")
        expect(page).to have_content("ELEC")
        expect(page).to have_content("UDR")
        expect(page).to have_content("CO")
        expect(page).to have_content("800 Acoma St")
        expect(page).to have_content("80203")
      end
    end
  end
end
