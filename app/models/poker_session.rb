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

class PokerSession < ApplicationRecord
  belongs_to :user
  validates :buy_in, presence: true
  validates :cash_out, presence: true
end
