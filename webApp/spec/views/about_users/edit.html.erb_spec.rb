require 'rails_helper'

RSpec.describe "about_users/edit", type: :view do
  before(:each) do
    @about_user = assign(:about_user, AboutUser.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit about_user form" do
    render

    assert_select "form[action=?][method=?]", about_user_path(@about_user), "post" do

      assert_select "input#about_user_name[name=?]", "about_user[name]"
    end
  end
end
