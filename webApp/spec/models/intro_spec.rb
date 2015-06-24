require 'rails_helper'

RSpec.describe Intro, type: :model do
  it "Invalid attributes" do
  	intro = Intro.create!(intro: "I am introduction now")
  	expect(intro).to respond_to(:id)
  	expect(intro).to respond_to(:intro)
  	expect(intro).to respond_to(:created_at)
  end

  it "not the right attributes" do
  	intro = Intro.create!(intro: "I am introduction now")
  	expect(intro.intro).to eql("I am introduction now")
  	expect(intro.id).to eql(Intro.last.id)
  end

  it "No error messages" do
  	intro = Intro.create!(intro: "I am introduction now")
  	expect(intro).to be_valid
  	expect(intro.errors.messages).to be_empty
  end
end
