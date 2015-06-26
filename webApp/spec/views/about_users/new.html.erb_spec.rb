require 'rails_helper'

RSpec.describe "about_users/new", type: :view do
  before(:each) do
    assign(:about_user, AboutUser.new(
      :name => "MyString"
    ))
  end

  it "renders new about_user form" do
    render

    assert_select "form[action=?][method=?]", about_users_path, "post" do

      assert_select "input#about_user_name[name=?]", "about_user[name]"
    end
  end
end
