json.array!(@patient_summaries) do |patient_summary|
  json.extract! patient_summary, :id
  json.url patient_summary_url(patient_summary, format: :json)
end
