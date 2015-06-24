require 'rails_helper'

describe "Navigating Home_users Show Page" do
  it "renders the show page name" do
    home_user = HomeUser.create!(name: "Turibamwe")
    visit home_user_url(home_user)

    expect(current_path).to eq(home_user_path(home_user))
    expect(page).to have_text(home_user.name)
  end

  it "click links" do
    home_user = HomeUser.create!(name: "Turibamwe")
    visit home_user_url(home_user)

    click_link "Edit"
    expect(current_path).to eql(edit_home_user_path(home_user))
    expect(page).to have_text("Show")
  end
end
