require 'rails_helper'

RSpec.describe Room, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:home_type) }
    it { is_expected.to validate_presence_of(:room_type) }
    it { is_expected.to validate_presence_of(:accommodate) }
    it { is_expected.to validate_presence_of(:bedroom_count) }
    it { is_expected.to validate_presence_of(:bathroom_count) }
    it { is_expected.to validate_presence_of(:listing_name) }
    it { is_expected.to validate_length_of(:listing_name).is_at_most(50) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_length_of(:description).is_at_most(500) }
    it { is_expected.to validate_presence_of(:address) }
  end

  describe "#bargain?" do
    let(:bargain_room) { create :room, price: 20 }
    let(:non_bargain_room) { create :room, price: 200 }

    it "returns true if the price is smaller than 30 EUR" do
      expect(bargain_room.bargain?).to eq(true)
      expect(non_bargain_room.bargain?).to eq(false)
    end
  end

  describe ".order_by_price" do
  let!(:room1) { create :room, price: 100 }
  let!(:room2) { create :room, price: 200 }
  let!(:room3) { create :room, price: 50 }

  it "returns a sorted array of rooms by prices" do
    # note that they should not come out in the order that they were created
    expect(Room.order_by_price).to eq([room3, room1, room2])
  end
end

    describe "association with user" do
      let(:user) { create :user }
      it { is_expected.to belong_to :user}
    end

    describe "association with theme" do
      let(:room) { create :room }

      let(:theme1) { create :theme, name: "Bright", rooms: [room] }
      let(:theme2) { create :theme, name: "Clean lines", rooms: [room] }
      let(:theme3) { create :theme, name: "A Man's Touch", rooms: [room] }

    it { is_expected.to have_and_belong_to_many :themes }
  end

  describe "association with booking" do
  let(:guest_user) { create :user, email: "guest@user.com" }
  let(:host_user) { create :user, email: "host@user.com" }

  let!(:room) { create :room, user: host_user }
  let!(:booking) { create :booking, room: room, user: guest_user }

  it "has guests" do
    expect(room.guests).to include(guest_user)
  end

  describe "#available?" do
  let(:host_user) { create :user, email: "host@user.com" }
  let(:guest_user) { create :user, email: "guest@user.com" }

  let(:room) { create :room, price: 20, user: host_user }

  let!(:existent_booking) {
    create :booking,
      room: room,
      starts_at: 2.days.from_now,
      ends_at: 6.days.from_now,
      user: guest_user
  }

  context "is available" do
    subject { room.available?(8.days.from_now, 10.days.from_now) }

    it "returns true" do
      expect(subject).to be true
    end
  end

  context "is not available" do
    subject { room.available?(4.days.from_now, 10.days.from_now) }

    it "returns false" do
      expect(subject).to be false
    end
  end
end

end
end
