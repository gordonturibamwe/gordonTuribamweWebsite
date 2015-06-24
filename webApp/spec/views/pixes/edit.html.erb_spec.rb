require 'rails_helper'

RSpec.describe "pixes/edit", type: :view do
  before(:each) do
    @pix = assign(:pix, Pix.create!(
      :name => "MyString",
      :caption => "MyString",
      :home_user => nil
    ))
  end

  it "renders the edit pix form" do
    render

    assert_select "form[action=?][method=?]", pix_path(@pix), "post" do

      assert_select "input#pix_name[name=?]", "pix[name]"

      assert_select "input#pix_caption[name=?]", "pix[caption]"

      assert_select "input#pix_home_user_id[name=?]", "pix[home_user_id]"
    end
  end
end
