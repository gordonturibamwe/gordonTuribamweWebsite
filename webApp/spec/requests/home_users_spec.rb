require 'rails_helper'

describe "HomeUsers", type: :request do
    
    it "works! (now write some real specs)" do
      get home_users_path
      expect(response).to have_http_status(200)
    end


end
