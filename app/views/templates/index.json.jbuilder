json.array!(@templates) do |template|
  json.extract! template, :id, :certificate_id, :base_template_id, :background, :logo, :img_1, :img_2, :img_3, :img_4, :img_5, :text_1, :text_2, :text_3, :text_4, :text_5, :text_6, :text_7, :text_8, :text_9, :text_10
  json.url template_url(template, format: :json)
end
