require 'rails_helper'

RSpec.describe "Buttons", type: :request do
  describe "GET /buttons" do
    it "works! (now write some real specs)" do
      get buttons_path
      expect(response).to have_http_status(200)
    end
  end
end
