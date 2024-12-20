require 'rails_helper'

RSpec.describe PubsController, type: :controller do
  let!(:pub) { create(:pub) }

  describe "GET #index" do
    it "returns all pubs" do
      get :index
      expect(response).to have_http_status(:ok)
      expect(json.length).to eq(1)
    end
  end

  describe "GET #show" do
    it "returns the pub" do
      get :show, params: { id: pub.id }
      expect(response).to have_http_status(:ok)
    end
  end

  describe "POST #create" do
    it "creates a new pub" do
      expect {
        post :create, params: { pub: { name: 'The Old Pub', location: 'Downtown' } }
      }.to change(Pub, :count).by(1)
      expect(response).to have_http_status(:created)
    end
  end

  describe "PUT #update" do
    it "updates the pub" do
      put :update, params: { id: pub.id, pub: { name: 'New Pub Name' } }
      expect(response).to have_http_status(:ok)
    end
  end

  describe "DELETE #destroy" do
    it "deletes the pub" do
      expect {
        delete :destroy, params: { id: pub.id }
      }.to change(Pub, :count).by(-1)
      expect(response).to have_http_status(:no_content)
    end
  end
end
