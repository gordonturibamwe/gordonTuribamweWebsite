require "rails_helper"

describe "routing" do

    it "routes to #index" do
      home_user1 = HomeUser.create!(name: 'Turibamwe')
      expect(:get => "/home_users/1/intros").to route_to("intros#index")
    end

    # it "routes to #new" do
    #   expect(:get => "/intros/new").to route_to("intros#new")
    # end

    # it "routes to #show" do
    #   expect(:get => "/intros/1").to route_to("intros#show", :id => "1")
    # end

    # it "routes to #edit" do
    #   expect(:get => "/intros/1/edit").to route_to("intros#edit", :id => "1")
    # end

    # it "routes to #create" do
    #   expect(:post => "/intros").to route_to("intros#create")
    # end

    # it "routes to #update via PUT" do
    #   expect(:put => "/intros/1").to route_to("intros#update", :id => "1")
    # end

    # it "routes to #update via PATCH" do
    #   expect(:patch => "/intros/1").to route_to("intros#update", :id => "1")
    # end

    # it "routes to #destroy" do
    #   expect(:delete => "/intros/1").to route_to("intros#destroy", :id => "1")
    # end

end
