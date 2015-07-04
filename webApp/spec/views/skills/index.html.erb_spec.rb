require 'rails_helper'

RSpec.describe "skills/index", type: :view do
  before(:each) do
    assign(:skills, [
      Skill.create!(
        :skills => "MyText",
        :about_user => nil
      ),
      Skill.create!(
        :skills => "MyText",
        :about_user => nil
      )
    ])
  end

  it "renders a list of skills" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
