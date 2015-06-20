require 'rails_helper'

RSpec.describe "patient_summaries/show", type: :view do
  before(:each) do
    @patient_summary = assign(:patient_summary, PatientSummary.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
