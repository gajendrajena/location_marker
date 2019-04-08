require 'rails_helper'

RSpec.describe Location, type: :model do
  describe '#validations' do
    context 'when address is invalid' do

      it 'returns a json object containing latitude' do
        loc = Location.create address: ''

        expect(loc.errors).to be_present
      end
    end
  end

  describe '#as_json' do
    before { allow_any_instance_of(Location).to receive(:geocode).and_return([52.5075459, 13.3903685]) }
    let(:loc) { FactoryBot.create(:location) }

    it 'returns a json object containing id' do
      expect(loc.as_json[:id]).to eq(loc.id)
    end

    it 'returns a json object containing latitude' do
      expect(loc.as_json[:latitude]).to eq(loc.latitude)
    end

    it 'returns a json object containing longitude' do
      expect(loc.as_json[:longitude]).to eq(loc.longitude)
    end

    it 'returns a json object containing address' do
      expect(loc.as_json[:address]).to eq(loc.address)
    end

    it 'returns a json object containing position' do
      expect(loc.as_json[:pos]).to have_key(:lat)
      expect(loc.as_json[:pos]).to have_key(:lng)
    end
  end
end
