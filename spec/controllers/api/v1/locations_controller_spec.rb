require 'rails_helper'

RSpec.describe Api::V1::LocationsController, type: :controller do

  describe '#index' do
    let!(:loc) { FactoryBot.create(:location) }

    it 'it should render with status 200' do
      get :index

      expect(response.status).to eq(200)
    end

    it 'it should render with status 200' do
      get :index

      expect(assigns(:locations)).not_to be_empty
    end
  end

  describe '#create' do
    it 'it should render with status 200' do
      post :create, params: {location: {address: 'Leipzig'}}

      expect(response.status).to eq(201)
      expect(assigns(:location)).not_to be_nil
    end
  end

  describe '#update' do
    let!(:loc) { FactoryBot.create(:location) }
    it 'it should render with status 200' do
      put :update, params: {id: loc.id, location: {address: 'Leipzig'}}

      expect(response.status).to eq(200)
      expect(assigns(:location).errors).to be_blank
    end
  end

  describe '#delete' do
    let!(:loc) { FactoryBot.create(:location) }
    it 'it should render with status 200' do
      delete :destroy, params: {id: loc.id}

      expect(response.status).to eq(204)
      expect(assigns(:location).id).to be_present
    end
  end

end
