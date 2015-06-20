require 'rails_helper'

RSpec.describe "patients/show", type: :view do
  before(:each) do
    @patient = assign(:patient, Patient.create!(
      :mrn => "Mrn",
      :family_name => "Family Name",
      :given_name => "Given Name",
      :sex => "Sex",
      :photo_file_name => "Photo File Name",
      :photo_content_type => "Photo Content Type",
      :photo_file_size => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Mrn/)
    expect(rendered).to match(/Family Name/)
    expect(rendered).to match(/Given Name/)
    expect(rendered).to match(/Sex/)
    expect(rendered).to match(/Photo File Name/)
    expect(rendered).to match(/Photo Content Type/)
    expect(rendered).to match(/1/)
  end
end
