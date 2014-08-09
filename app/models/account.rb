class Account < ActiveRecord::Base
  has_many :monthly_balances
end
