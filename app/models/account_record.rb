class AccountRecord < ActiveRecord::Base
  belongs_to :account
  belongs_to :monthly_balance
  after_create :update_monthly_balance
  after_update :update_monthly_balance
  

  private
  def update_monthly_balance
    month = date.month
    monthly_balance = MonthlyBalance.find_by account: account, month: month
    if monthly_balance == nil
      monthly_balance = MonthlyBalance.new month: month, account: account, initial_balance: 0, current_balance: 0, final_balance: nil
      monthly_balance.save
    end

    monthly_balance.current_balance += amount if record_type == "DEBIT"
    monthly_balance.current_balance -= amount if record_type == "CREDIT"   
    monthly_balance.save
  end 
  
end
