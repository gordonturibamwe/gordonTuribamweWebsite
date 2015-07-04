require 'rails_helper'

RSpec.describe "works/new", type: :view do
  before(:each) do
    assign(:work, Work.new(
      :title => "MyString",
      :description => "MyText",
      :link => "MyString",
      :about_user => nil
    ))
  end

  it "renders new work form" do
    render

    assert_select "form[action=?][method=?]", works_path, "post" do

      assert_select "input#work_title[name=?]", "work[title]"

      assert_select "textarea#work_description[name=?]", "work[description]"

      assert_select "input#work_link[name=?]", "work[link]"

      assert_select "input#work_about_user_id[name=?]", "work[about_user_id]"
    end
  end
end
