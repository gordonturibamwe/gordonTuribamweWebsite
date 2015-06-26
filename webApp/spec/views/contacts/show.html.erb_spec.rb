require 'rails_helper'

RSpec.describe "contacts/show", type: :view do
  before(:each) do
    @contact = assign(:contact, Contact.create!(
      :tel => "Tel",
      :street => "Street",
      :city => "City",
      :state => "State",
      :country => "Country",
      :about_user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Tel/)
    expect(rendered).to match(/Street/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(//)
  end
end
