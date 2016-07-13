json.array!(@certificates) do |certificate|
  json.extract! certificate, :id, :user_id, :template_id, :students_count, :tags
  json.url certificate_url(certificate, format: :json)
end
