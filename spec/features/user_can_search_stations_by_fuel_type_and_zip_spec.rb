require 'rails_helper'

RSpec.describe 'User searches for' do
  it 'electric and propane stations within 6 miles' do
    visit '/'

    fill_in :q, with: '80203'

    click_on 'Locate'

    expect(current_path).to eq('/search')
    binding.pry

    within .station do
      expect(stations.count).to eq(10)
    end
  end
end
