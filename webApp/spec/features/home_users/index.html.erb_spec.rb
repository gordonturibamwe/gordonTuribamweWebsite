require 'rails_helper'

describe "Navigating Home" do
  it "allows navigation from the detail page to the listing page" do
    home_user1 = HomeUser.create(name: 'Turibamwe')
    home_user2 = HomeUser.create(name: 'Hiroyo')

    visit home_users_url
    expect(current_path).to eq(home_users_path)
    expect(page).to have_text(home_user1.name)

    expect(page).to have_text("Turibamwe")
    expect(page).to have_text("Hiroyo")
  end
end