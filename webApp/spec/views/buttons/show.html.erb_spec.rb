require 'rails_helper'

RSpec.describe "buttons/show", type: :view do
  before(:each) do
    @button = assign(:button, Button.create!(
      :name => "Name",
      :url => "Url",
      :home_user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(//)
  end
end
