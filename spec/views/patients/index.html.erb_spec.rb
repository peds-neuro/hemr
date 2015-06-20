require 'rails_helper'

RSpec.describe "patients/index", type: :view do
  before(:each) do
    assign(:patients, [
      Patient.create!(
        :mrn => "Mrn",
        :family_name => "Family Name",
        :given_name => "Given Name",
        :sex => "Sex",
        :photo_file_name => "Photo File Name",
        :photo_content_type => "Photo Content Type",
        :photo_file_size => 1
      ),
      Patient.create!(
        :mrn => "Mrn",
        :family_name => "Family Name",
        :given_name => "Given Name",
        :sex => "Sex",
        :photo_file_name => "Photo File Name",
        :photo_content_type => "Photo Content Type",
        :photo_file_size => 1
      )
    ])
  end

  it "renders a list of patients" do
    render
    assert_select "tr>td", :text => "Mrn".to_s, :count => 2
    assert_select "tr>td", :text => "Family Name".to_s, :count => 2
    assert_select "tr>td", :text => "Given Name".to_s, :count => 2
    assert_select "tr>td", :text => "Sex".to_s, :count => 2
    assert_select "tr>td", :text => "Photo File Name".to_s, :count => 2
    assert_select "tr>td", :text => "Photo Content Type".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
