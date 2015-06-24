require 'rails_helper'

RSpec.describe "intros/index", type: :view do
  # before(:each) do
  #   assign(:intros, [
  #     Intro.create!(
  #       :intro => "MyText",
  #       :home-user => nil
  #     ),
  #     Intro.create!(
  #       :intro => "MyText",
  #       :home-user => nil
  #     )
  #   ])
  # end

  # it "renders a list of intros" do
  #   render
  #   assert_select "tr>td", :text => "MyText".to_s, :count => 2
  #   assert_select "tr>td", :text => nil.to_s, :count => 2
  # end

  it "allows navigation from the detail page to the listing page" do
    intro1 = Intro.create(name: 'This is intro 1')
    intro2 = Intro.create(name: 'This is intro 2')

    visit home_users_url
    expect(current_path).to eq(home_users_path)
    expect(page).to have_text(home_user1.name)

    expect(page).to have_text("Turibamwe")
    expect(page).to have_text("Hiroyo")
  end
end
