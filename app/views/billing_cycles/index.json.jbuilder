json.array!(@billing_cycles) do |billing_cycle|
  json.extract! billing_cycle, :id, :user_id, :plan_id, :date_issued, :amount_issued
  json.url billing_cycle_url(billing_cycle, format: :json)
end
