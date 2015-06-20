require 'rails_helper'

RSpec.describe "documents/new", type: :view do
  before(:each) do
    assign(:document, Document.new(
      :patient => nil,
      :user => nil,
      :source_author => "MyString",
      :source_institution => "MyString",
      :department => "MyString",
      :type => "",
      :title => "MyString",
      :body => "MyText",
      :structured_data => "",
      :default_view => "MyString",
      :source_file_filename => "MyString",
      :source_file_content_type => "MyString",
      :source_file_file_size => 1
    ))
  end

  it "renders new document form" do
    render

    assert_select "form[action=?][method=?]", documents_path, "post" do

      assert_select "input#document_patient_id[name=?]", "document[patient_id]"

      assert_select "input#document_user_id[name=?]", "document[user_id]"

      assert_select "input#document_source_author[name=?]", "document[source_author]"

      assert_select "input#document_source_institution[name=?]", "document[source_institution]"

      assert_select "input#document_department[name=?]", "document[department]"

      assert_select "input#document_type[name=?]", "document[type]"

      assert_select "input#document_title[name=?]", "document[title]"

      assert_select "textarea#document_body[name=?]", "document[body]"

      assert_select "input#document_structured_data[name=?]", "document[structured_data]"

      assert_select "input#document_default_view[name=?]", "document[default_view]"

      assert_select "input#document_source_file_filename[name=?]", "document[source_file_filename]"

      assert_select "input#document_source_file_content_type[name=?]", "document[source_file_content_type]"

      assert_select "input#document_source_file_file_size[name=?]", "document[source_file_file_size]"
    end
  end
end
