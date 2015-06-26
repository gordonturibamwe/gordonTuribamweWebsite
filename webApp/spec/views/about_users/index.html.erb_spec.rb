require 'rails_helper'

RSpec.describe "about_users/index", type: :view do
  before(:each) do
    assign(:about_users, [
      AboutUser.create!(
        :name => "Name"
      ),
      AboutUser.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of about_users" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
