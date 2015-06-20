require 'rails_helper'

RSpec.describe "patient_summaries/new", type: :view do
  before(:each) do
    assign(:patient_summary, PatientSummary.new())
  end

  it "renders new patient_summary form" do
    render

    assert_select "form[action=?][method=?]", patient_summaries_path, "post" do
    end
  end
end
