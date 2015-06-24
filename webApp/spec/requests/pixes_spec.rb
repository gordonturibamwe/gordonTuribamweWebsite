require 'rails_helper'

RSpec.describe "Pixes", type: :request do
  describe "GET /pixes" do
    it "works! (now write some real specs)" do
      get pixes_path
      expect(response).to have_http_status(200)
    end
  end
end
