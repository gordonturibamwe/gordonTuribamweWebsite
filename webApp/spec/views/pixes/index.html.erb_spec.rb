require 'rails_helper'

RSpec.describe "pixes/index", type: :view do
  before(:each) do
    assign(:pixes, [
      Pix.create!(
        :name => "Name",
        :caption => "Caption",
        :home_user => nil
      ),
      Pix.create!(
        :name => "Name",
        :caption => "Caption",
        :home_user => nil
      )
    ])
  end

  it "renders a list of pixes" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Caption".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
