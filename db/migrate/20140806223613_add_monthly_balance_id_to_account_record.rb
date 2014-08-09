class AddMonthlyBalanceIdToAccountRecord < ActiveRecord::Migration
  def change
    add_column :account_records, :monthly_balance_id, :integer
  end
end
