class Account < ActiveRecord::Base
  has_many :monthly_balances
  belongs_to :company
end
