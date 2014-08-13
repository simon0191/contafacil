json.array!(@companies) do |company|
  json.extract! company, :id, :name, :nit, :address, :phone_number, :email
  json.url company_url(company, format: :json)
end
