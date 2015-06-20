require 'rails_helper'

RSpec.describe "patients/edit", type: :view do
  before(:each) do
    @patient = assign(:patient, Patient.create!(
      :mrn => "MyString",
      :family_name => "MyString",
      :given_name => "MyString",
      :sex => "MyString",
      :photo_file_name => "MyString",
      :photo_content_type => "MyString",
      :photo_file_size => 1
    ))
  end

  it "renders the edit patient form" do
    render

    assert_select "form[action=?][method=?]", patient_path(@patient), "post" do

      assert_select "input#patient_mrn[name=?]", "patient[mrn]"

      assert_select "input#patient_family_name[name=?]", "patient[family_name]"

      assert_select "input#patient_given_name[name=?]", "patient[given_name]"

      assert_select "input#patient_sex[name=?]", "patient[sex]"

      assert_select "input#patient_photo_file_name[name=?]", "patient[photo_file_name]"

      assert_select "input#patient_photo_content_type[name=?]", "patient[photo_content_type]"

      assert_select "input#patient_photo_file_size[name=?]", "patient[photo_file_size]"
    end
  end
end
