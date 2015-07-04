require 'rails_helper'

RSpec.describe "portfolios/new", type: :view do
  before(:each) do
    assign(:portfolio, Portfolio.new(
      :title => "MyString",
      :description => "MyText",
      :link => "MyString",
      :work => nil
    ))
  end

  it "renders new portfolio form" do
    render

    assert_select "form[action=?][method=?]", portfolios_path, "post" do

      assert_select "input#portfolio_title[name=?]", "portfolio[title]"

      assert_select "textarea#portfolio_description[name=?]", "portfolio[description]"

      assert_select "input#portfolio_link[name=?]", "portfolio[link]"

      assert_select "input#portfolio_work_id[name=?]", "portfolio[work_id]"
    end
  end
end
