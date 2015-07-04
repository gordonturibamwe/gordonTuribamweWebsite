require 'rails_helper'

RSpec.describe "skills/show", type: :view do
  before(:each) do
    @skill = assign(:skill, Skill.create!(
      :skills => "MyText",
      :about_user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
