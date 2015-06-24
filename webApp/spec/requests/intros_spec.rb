require 'rails_helper'

RSpec.describe "Intros", type: :request do
  describe "GET /intros" do
    it "works! (now write some real specs)" do
      get intros_path
      expect(response).to have_http_status(200)
    end
  end
end
