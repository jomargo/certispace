json.array!(@billing_addresses) do |billing_address|
  json.extract! billing_address, :id, :user_id, :address_1, :address_2, :city, :state, :country, :postal_code, :stripe_data
  json.url billing_address_url(billing_address, format: :json)
end
