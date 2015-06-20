require 'rails_helper'

RSpec.describe "patient_summaries/edit", type: :view do
  before(:each) do
    @patient_summary = assign(:patient_summary, PatientSummary.create!())
  end

  it "renders the edit patient_summary form" do
    render

    assert_select "form[action=?][method=?]", patient_summary_path(@patient_summary), "post" do
    end
  end
end
