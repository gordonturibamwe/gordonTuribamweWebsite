require 'rails_helper'

RSpec.describe "educations/index", type: :view do
  before(:each) do
    assign(:educations, [
      Education.create!(
        :title => "Title",
        :school => "School",
        :schoolurl => "Schoolurl",
        :startdate => "",
        :description => "MyText",
        :about_user => nil
      ),
      Education.create!(
        :title => "Title",
        :school => "School",
        :schoolurl => "Schoolurl",
        :startdate => "",
        :description => "MyText",
        :about_user => nil
      )
    ])
  end

  it "renders a list of educations" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "School".to_s, :count => 2
    assert_select "tr>td", :text => "Schoolurl".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
