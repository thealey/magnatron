class Account < ApplicationRecord
  validates_presence_of :name
  enum :account_type, [ :retirement, :cash, :equity ]
  has_many :balances

  def latest_balance
    return self.balances.order("created_at desc").first
  end
end
