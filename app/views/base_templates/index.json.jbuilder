json.array!(@base_templates) do |base_template|
  json.extract! base_template, :id, :html_file, :background, :logo, :img_1, :img_2, :img_3, :img_4, :img_5, :text_1, :text_2, :text_3, :text_4, :text_5, :text_6, :text_7, :text_8, :text_9, :text_10
  json.url base_template_url(base_template, format: :json)
end
