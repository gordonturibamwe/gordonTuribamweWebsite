require 'rails_helper'

RSpec.describe "buttons/edit", type: :view do
  before(:each) do
    @button = assign(:button, Button.create!(
      :name => "MyString",
      :url => "MyString",
      :home_user => nil
    ))
  end

  it "renders the edit button form" do
    render

    assert_select "form[action=?][method=?]", button_path(@button), "post" do

      assert_select "input#button_name[name=?]", "button[name]"

      assert_select "input#button_url[name=?]", "button[url]"

      assert_select "input#button_home_user_id[name=?]", "button[home_user_id]"
    end
  end
end
