json.array!(@documents) do |document|
  json.extract! document, :id, :patient_id, :user_id, :source_author, :source_institution, :department, :type, :title, :body, :structured_data, :default_view, :source_file_filename, :source_file_content_type, :source_file_file_size, :source_file_updated_at
  json.url document_url(document, format: :json)
end
