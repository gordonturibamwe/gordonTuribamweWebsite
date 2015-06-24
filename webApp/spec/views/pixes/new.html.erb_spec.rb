require 'rails_helper'

RSpec.describe "pixes/new", type: :view do
  before(:each) do
    assign(:pix, Pix.new(
      :name => "MyString",
      :caption => "MyString",
      :home_user => nil
    ))
  end

  it "renders new pix form" do
    render

    assert_select "form[action=?][method=?]", pixes_path, "post" do

      assert_select "input#pix_name[name=?]", "pix[name]"

      assert_select "input#pix_caption[name=?]", "pix[caption]"

      assert_select "input#pix_home_user_id[name=?]", "pix[home_user_id]"
    end
  end
end
