class MonthlyBalance < ActiveRecord::Base
  belongs_to :account
  has_many :account_records
end
