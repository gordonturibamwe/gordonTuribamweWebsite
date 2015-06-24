require 'rails_helper'

RSpec.describe HomeUser, type: :model do
  it "Invalid attributes" do
  	home = HomeUser.create!(name: "Turibamwe")
  	expect(home).to respond_to(:id)
  	expect(home).to respond_to(:name)
  	expect(home).to respond_to(:created_at)
  end

  it "not the right attributes" do
  	home = HomeUser.create!(name: "Turibamwe")
  	expect(home.name).to eql("Turibamwe")
  	expect(home.id).to eql(HomeUser.last.id)
  end

  it "No error messages" do
  	home = HomeUser.create!(name: "Turibamwe")
  	expect(home).to be_valid
  	expect(home.errors.messages).to be_empty
  end
end
