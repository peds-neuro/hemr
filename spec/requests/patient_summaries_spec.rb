require 'rails_helper'

RSpec.describe "PatientSummaries", type: :request do
  describe "GET /patient_summaries" do
    it "works! (now write some real specs)" do
      get patient_summaries_path
      expect(response).to have_http_status(200)
    end
  end
end
