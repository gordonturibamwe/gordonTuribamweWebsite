require 'rails_helper'

RSpec.describe "intros/show", type: :view do
  before(:each) do
    @intro = assign(:intro, Intro.create!(
      :intro => "MyText",
      :home-user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
