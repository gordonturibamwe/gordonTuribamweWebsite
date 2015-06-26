require 'rails_helper'

RSpec.describe "contacts/new", type: :view do
  before(:each) do
    assign(:contact, Contact.new(
      :tel => "MyString",
      :street => "MyString",
      :city => "MyString",
      :state => "MyString",
      :country => "MyString",
      :about_user => nil
    ))
  end

  it "renders new contact form" do
    render

    assert_select "form[action=?][method=?]", contacts_path, "post" do

      assert_select "input#contact_tel[name=?]", "contact[tel]"

      assert_select "input#contact_street[name=?]", "contact[street]"

      assert_select "input#contact_city[name=?]", "contact[city]"

      assert_select "input#contact_state[name=?]", "contact[state]"

      assert_select "input#contact_country[name=?]", "contact[country]"

      assert_select "input#contact_about_user_id[name=?]", "contact[about_user_id]"
    end
  end
end
