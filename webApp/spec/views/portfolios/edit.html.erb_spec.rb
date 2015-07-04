require 'rails_helper'

RSpec.describe "portfolios/edit", type: :view do
  before(:each) do
    @portfolio = assign(:portfolio, Portfolio.create!(
      :title => "MyString",
      :description => "MyText",
      :link => "MyString",
      :work => nil
    ))
  end

  it "renders the edit portfolio form" do
    render

    assert_select "form[action=?][method=?]", portfolio_path(@portfolio), "post" do

      assert_select "input#portfolio_title[name=?]", "portfolio[title]"

      assert_select "textarea#portfolio_description[name=?]", "portfolio[description]"

      assert_select "input#portfolio_link[name=?]", "portfolio[link]"

      assert_select "input#portfolio_work_id[name=?]", "portfolio[work_id]"
    end
  end
end
