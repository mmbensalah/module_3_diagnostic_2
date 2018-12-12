require 'rails_helper'

RSpec.describe 'NREL Service' do
  it 'exists' do
    service = NrelService.new
    expect(service).to be_an_instance_of(NrelService)
  end
end
