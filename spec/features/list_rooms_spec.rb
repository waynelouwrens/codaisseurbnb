require 'rails_helper'

describe "Current user viewing the list of rooms" do
  before { login_as user }

  let(:user) { create :user }
  let(:another_user) { create :user }

  let!(:room1) { create :room, listing_name: "Listing Name 1", user: user }
  let!(:room2) { create :room, listing_name: "Listing Name 2", user: user }
  let!(:room3) { create :room, listing_name: "Another users room", user: another_user }

  it "shows all his rooms" do
    visit rooms_url

    expect(page).to have_text("Listing Name 1")
    expect(page).to have_text("Listing Name 2")
  end

  #it "does not show other users rooms" do
    #visit rooms_url

    #expect(page).to have_text("Another users room")
  #end
end
