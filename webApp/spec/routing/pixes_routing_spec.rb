require "rails_helper"

RSpec.describe PixesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/pixes").to route_to("pixes#index")
    end

    it "routes to #new" do
      expect(:get => "/pixes/new").to route_to("pixes#new")
    end

    it "routes to #show" do
      expect(:get => "/pixes/1").to route_to("pixes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/pixes/1/edit").to route_to("pixes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/pixes").to route_to("pixes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/pixes/1").to route_to("pixes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/pixes/1").to route_to("pixes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/pixes/1").to route_to("pixes#destroy", :id => "1")
    end

  end
end
