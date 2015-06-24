require "rails_helper"

RSpec.describe HomeUsersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/home_users").to route_to("home_users#index")
    end

    it "routes to #new" do
      expect(:get => "/home_users/new").to route_to("home_users#new")
    end

    it "routes to #show" do
      expect(:get => "/home_users/1").to route_to("home_users#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/home_users/1/edit").to route_to("home_users#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/home_users").to route_to("home_users#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/home_users/1").to route_to("home_users#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/home_users/1").to route_to("home_users#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/home_users/1").to route_to("home_users#destroy", :id => "1")
    end

  end
end
