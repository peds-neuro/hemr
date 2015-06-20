json.array!(@patients) do |patient|
  json.extract! patient, :id, :mrn, :family_name, :given_name, :dob, :sex, :photo_file_name, :photo_content_type, :photo_file_size, :photo_updated_at
  json.url patient_url(patient, format: :json)
end
