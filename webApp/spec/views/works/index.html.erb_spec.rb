require 'rails_helper'

RSpec.describe "works/index", type: :view do
  before(:each) do
    assign(:works, [
      Work.create!(
        :title => "Title",
        :description => "MyText",
        :link => "Link",
        :about_user => nil
      ),
      Work.create!(
        :title => "Title",
        :description => "MyText",
        :link => "Link",
        :about_user => nil
      )
    ])
  end

  it "renders a list of works" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Link".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
