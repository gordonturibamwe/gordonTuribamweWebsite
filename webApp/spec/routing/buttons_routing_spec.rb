require "rails_helper"

RSpec.describe ButtonsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/buttons").to route_to("buttons#index")
    end

    it "routes to #new" do
      expect(:get => "/buttons/new").to route_to("buttons#new")
    end

    it "routes to #show" do
      expect(:get => "/buttons/1").to route_to("buttons#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/buttons/1/edit").to route_to("buttons#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/buttons").to route_to("buttons#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/buttons/1").to route_to("buttons#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/buttons/1").to route_to("buttons#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/buttons/1").to route_to("buttons#destroy", :id => "1")
    end

  end
end
