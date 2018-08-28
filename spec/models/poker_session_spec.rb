# == Schema Information
#
# Table name: poker_sessions
#
#  id         :bigint(8)        not null, primary key
#  user_id    :bigint(8)
#  stakes     :integer
#  place      :string
#  memo       :text
#  start_at   :datetime
#  stop_at    :datetime
#  buy_in     :integer
#  cash_out   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe PokerSession, type: :model do
  before do
    @user = User.create(
              name: "Tanaka Taro",
              email: "test@example.com",
              password: "foobar",
              password_confirmation: "foobar"
            )
    @poker_session = @user.poker_sessions.create(
              start_at: Time.parse("2017/04/25 19:23:55"),
              stop_at: Time.parse("2017/04/25 23:55:20"),
              buy_in: 100,
              cash_out: 10000,
            )
  end

  it "is valid with a user, start_at, stop_at, buy_in and cash_out" do
    expect(@poker_session).to be_valid
  end

  it "is invalid without start_at" do
    @poker_session.start_at = nil
    expect(@poker_session).not_to be_valid
  end

  it "is invalid without stop_at" do
    @poker_session.stop_at = nil
    expect(@poker_session).not_to be_valid
  end

  it "is invalid without buy_in" do
    @poker_session.buy_in = nil
    expect(@poker_session).not_to be_valid
  end

  it "is invalid without cash_out" do
    @poker_session.cash_out = nil
    expect(@poker_session).not_to be_valid
  end

  it "is invalid with over 15 digit in buy_in and cash_out" do
    @poker_session.buy_in = 10 ** 15
    @poker_session.cash_out = 10 ** 15
    expect(@poker_session).not_to be_valid
  end

  it "is invalid with over 13 digit of stakes"
  it "is valid with expected currency"
  it "is invalid without unexpected currency"
end
