json.array!(@monthly_balances) do |monthly_balance|
  json.extract! monthly_balance, :id, :initial_balance, :final_balance, :current_balance, :account_id, :month
  json.url monthly_balance_url(monthly_balance, format: :json)
end
