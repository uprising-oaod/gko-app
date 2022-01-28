require 'rails_helper'

RSpec.describe HealthController, type: :controller do
  describe "GET logs" do
    it "returns a 200" do
      get :logs
      expect(response).to have_http_status(:ok)
    end
  end
end
