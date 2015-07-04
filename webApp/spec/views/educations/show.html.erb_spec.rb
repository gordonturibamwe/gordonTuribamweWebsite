require 'rails_helper'

RSpec.describe "educations/show", type: :view do
  before(:each) do
    @education = assign(:education, Education.create!(
      :title => "Title",
      :school => "School",
      :schoolurl => "Schoolurl",
      :startdate => "",
      :description => "MyText",
      :about_user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/School/)
    expect(rendered).to match(/Schoolurl/)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
