require 'rails_helper'

RSpec.describe "Crawlers", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/crawler/index"
      expect(response).to have_http_status(:success)
    end
  end

end
