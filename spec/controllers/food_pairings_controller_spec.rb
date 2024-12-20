require 'rails_helper'

RSpec.describe FoodPairingsController, type: :controller do
  let!(:food_pairing) { create(:food_pairing) }

  describe "GET #index" do
    it "returns all food pairings" do
      get :index
      expect(response).to have_http_status(:ok)
      expect(json.length).to eq(1)
    end
  end

  describe "GET #show" do
    it "returns the food pairing" do
      get :show, params: { id: food_pairing.id }
      expect(response).to have_http_status(:ok)
    end
  end

  describe "POST #create" do
    it "creates a new food pairing" do
      expect {
        post :create, params: { food_pairing: { food_name: 'Pizza', beer_id: food_pairing.beer.id } }
      }.to change(FoodPairing, :count).by(1)
      expect(response).to have_http_status(:created)
    end
  end

  describe "PUT #update" do
    it "updates the food pairing" do
      put :update, params: { id: food_pairing.id, food_pairing: { food_name: 'Burger' } }
      expect(response).to have_http_status(:ok)
    end
  end

  describe "DELETE #destroy" do
    it "deletes the food pairing" do
      expect {
        delete :destroy, params: { id: food_pairing.id }
      }.to change(FoodPairing, :count).by(-1)
      expect(response).to have_http_status(:no_content)
    end
  end
end
