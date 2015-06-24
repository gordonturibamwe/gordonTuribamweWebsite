require 'rails_helper'

RSpec.describe "home_users/new", type: :view do
  before(:each) do
    assign(:home_user, HomeUser.new())
  end

  it "renders new home_user form" do
    render

    assert_select "form[action=?][method=?]", home_users_path, "post" do
    end
  end
end
