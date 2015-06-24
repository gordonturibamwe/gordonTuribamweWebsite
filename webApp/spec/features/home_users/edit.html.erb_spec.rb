require 'rails_helper'

RSpec.describe "home_users/edit", type: :view do
  before(:each) do
    @home_user = assign(:home_user, HomeUser.create!(name: "Turibamwe"))
  end

  it "renders the edit home_user form" do
    render

    assert_select "form[action=?][method=?]", home_user_path(@home_user), "post" do
    end
  end
end
