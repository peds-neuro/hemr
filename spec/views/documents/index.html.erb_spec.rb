require 'rails_helper'

RSpec.describe "documents/index", type: :view do
  before(:each) do
    assign(:documents, [
      Document.create!(
        :patient => nil,
        :user => nil,
        :source_author => "Source Author",
        :source_institution => "Source Institution",
        :department => "Department",
        :type => "Type",
        :title => "Title",
        :body => "MyText",
        :structured_data => "",
        :default_view => "Default View",
        :source_file_filename => "Source File Filename",
        :source_file_content_type => "Source File Content Type",
        :source_file_file_size => 1
      ),
      Document.create!(
        :patient => nil,
        :user => nil,
        :source_author => "Source Author",
        :source_institution => "Source Institution",
        :department => "Department",
        :type => "Type",
        :title => "Title",
        :body => "MyText",
        :structured_data => "",
        :default_view => "Default View",
        :source_file_filename => "Source File Filename",
        :source_file_content_type => "Source File Content Type",
        :source_file_file_size => 1
      )
    ])
  end

  it "renders a list of documents" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Source Author".to_s, :count => 2
    assert_select "tr>td", :text => "Source Institution".to_s, :count => 2
    assert_select "tr>td", :text => "Department".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Default View".to_s, :count => 2
    assert_select "tr>td", :text => "Source File Filename".to_s, :count => 2
    assert_select "tr>td", :text => "Source File Content Type".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
