json.array!(@plans) do |plan|
  json.extract! plan, :id, :monthly_certs, :price
  json.url plan_url(plan, format: :json)
end
