require 'rails_helper'

RSpec.describe "buttons/new", type: :view do
  before(:each) do
    assign(:button, Button.new(
      :name => "MyString",
      :url => "MyString",
      :home_user => nil
    ))
  end

  it "renders new button form" do
    render

    assert_select "form[action=?][method=?]", buttons_path, "post" do

      assert_select "input#button_name[name=?]", "button[name]"

      assert_select "input#button_url[name=?]", "button[url]"

      assert_select "input#button_home_user_id[name=?]", "button[home_user_id]"
    end
  end
end
