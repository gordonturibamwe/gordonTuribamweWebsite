require 'rails_helper'

RSpec.describe "intros/edit", type: :view do
  before(:each) do
    @intro = assign(:intro, Intro.create!(
      :intro => "MyText",
      :home-user => nil
    ))
  end

  it "renders the edit intro form" do
    render

    assert_select "form[action=?][method=?]", intro_path(@intro), "post" do

      assert_select "textarea#intro_intro[name=?]", "intro[intro]"

      assert_select "input#intro_home-user_id[name=?]", "intro[home-user_id]"
    end
  end
end
