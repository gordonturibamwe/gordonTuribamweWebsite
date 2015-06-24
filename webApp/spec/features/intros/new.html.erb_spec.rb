require 'rails_helper'

RSpec.describe "intros/new", type: :view do
  before(:each) do
    assign(:intro, Intro.new(
      :intro => "MyText",
      :home-user => nil
    ))
  end

  it "renders new intro form" do
    render

    assert_select "form[action=?][method=?]", intros_path, "post" do

      assert_select "textarea#intro_intro[name=?]", "intro[intro]"

      assert_select "input#intro_home-user_id[name=?]", "intro[home-user_id]"
    end
  end
end
