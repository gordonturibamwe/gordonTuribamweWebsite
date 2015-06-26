require 'rails_helper'

RSpec.describe "about_users/show", type: :view do
  before(:each) do
    @about_user = assign(:about_user, AboutUser.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
