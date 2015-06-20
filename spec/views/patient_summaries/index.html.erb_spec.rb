require 'rails_helper'

RSpec.describe "patient_summaries/index", type: :view do
  before(:each) do
    assign(:patient_summaries, [
      PatientSummary.create!(),
      PatientSummary.create!()
    ])
  end

  it "renders a list of patient_summaries" do
    render
  end
end
