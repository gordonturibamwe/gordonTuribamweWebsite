require 'rails_helper'

RSpec.describe "buttons/index", type: :view do
  before(:each) do
    assign(:buttons, [
      Button.create!(
        :name => "Name",
        :url => "Url",
        :home_user => nil
      ),
      Button.create!(
        :name => "Name",
        :url => "Url",
        :home_user => nil
      )
    ])
  end

  it "renders a list of buttons" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
