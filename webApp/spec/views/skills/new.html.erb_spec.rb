require 'rails_helper'

RSpec.describe "skills/new", type: :view do
  before(:each) do
    assign(:skill, Skill.new(
      :skills => "MyText",
      :about_user => nil
    ))
  end

  it "renders new skill form" do
    render

    assert_select "form[action=?][method=?]", skills_path, "post" do

      assert_select "textarea#skill_skills[name=?]", "skill[skills]"

      assert_select "input#skill_about_user_id[name=?]", "skill[about_user_id]"
    end
  end
end
