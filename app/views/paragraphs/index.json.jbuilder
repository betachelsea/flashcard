json.array!(@paragraphs) do |paragraph|
  json.extract! paragraph, :id, :body, :ja_body
  json.url paragraph_url(paragraph, format: :json)
end
