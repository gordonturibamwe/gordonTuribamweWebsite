require 'rails_helper'

RSpec.describe "pixes/show", type: :view do
  before(:each) do
    @pix = assign(:pix, Pix.create!(
      :name => "Name",
      :caption => "Caption",
      :home_user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Caption/)
    expect(rendered).to match(//)
  end
end
