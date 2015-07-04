require 'rails_helper'

RSpec.describe "educations/edit", type: :view do
  before(:each) do
    @education = assign(:education, Education.create!(
      :title => "MyString",
      :school => "MyString",
      :schoolurl => "MyString",
      :startdate => "",
      :description => "MyText",
      :about_user => nil
    ))
  end

  it "renders the edit education form" do
    render

    assert_select "form[action=?][method=?]", education_path(@education), "post" do

      assert_select "input#education_title[name=?]", "education[title]"

      assert_select "input#education_school[name=?]", "education[school]"

      assert_select "input#education_schoolurl[name=?]", "education[schoolurl]"

      assert_select "input#education_startdate[name=?]", "education[startdate]"

      assert_select "textarea#education_description[name=?]", "education[description]"

      assert_select "input#education_about_user_id[name=?]", "education[about_user_id]"
    end
  end
end
