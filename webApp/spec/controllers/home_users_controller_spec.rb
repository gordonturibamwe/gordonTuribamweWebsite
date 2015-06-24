require 'rails_helper'

RSpec.describe HomeUsersController, type: :controller do
  describe "GET index" do
    it "assigns all home_users as @home_users" do
      home_user = HomeUser.create!(name: "Turibamwe")
      get :index
      expect(assigns(:home_users)).to include(home_user)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "GET #show" do
    it "assigns the requested home_user as @home_user" do
      home_user = HomeUser.create!(name: "Nuru")
      get :show, {:id => home_user.to_param}
      expect(assigns(:home_user)).to eq(home_user)
    end

    it "renders the Show template" do
      home_user = HomeUser.create!(name: "Nuru")
      get :show, {:id => home_user.to_param}
      expect(response).to render_template("show")
    end
  end

  describe "GET #new" do
    it "assigns a new home_user as @home_user" do
      get :new, {}
      expect(assigns(:home_user)).to be_a_new(HomeUser)
    end

    it "renders the Show template" do
      get :new, {}
      expect(response).to render_template("new")
    end
  end

end
