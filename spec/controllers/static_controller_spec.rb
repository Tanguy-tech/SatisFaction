require 'rails_helper'

RSpec.describe StaticController, type: :controller do

  describe "GET #index_about_us" do
    it "returns http success" do
      get :index_about_us
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #index_our_services" do
    it "returns http success" do
      get :index_our_services
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #index_contact_us" do
    it "returns http success" do
      get :index_contact_us
      expect(response).to have_http_status(:success)
    end
  end

end
