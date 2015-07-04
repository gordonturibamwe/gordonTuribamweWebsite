require 'rails_helper'

RSpec.describe "skills/edit", type: :view do
  before(:each) do
    @skill = assign(:skill, Skill.create!(
      :skills => "MyText",
      :about_user => nil
    ))
  end

  it "renders the edit skill form" do
    render

    assert_select "form[action=?][method=?]", skill_path(@skill), "post" do

      assert_select "textarea#skill_skills[name=?]", "skill[skills]"

      assert_select "input#skill_about_user_id[name=?]", "skill[about_user_id]"
    end
  end
end
