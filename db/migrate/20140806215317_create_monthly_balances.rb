class CreateMonthlyBalances < ActiveRecord::Migration
  def change
    create_table :monthly_balances do |t|
      t.decimal :initial_balance
      t.decimal :final_balance
      t.decimal :current_balance
      t.integer :account_id
      t.integer :month

      t.timestamps
    end
  end
end
