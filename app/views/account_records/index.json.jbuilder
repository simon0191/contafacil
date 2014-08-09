json.array!(@account_records) do |account_record|
  json.extract! account_record, :id, :account_id, :amount, :date, :description, :record_type
  json.url account_record_url(account_record, format: :json)
end
