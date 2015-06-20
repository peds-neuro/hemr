require 'rails_helper'

RSpec.describe "documents/show", type: :view do
  before(:each) do
    @document = assign(:document, Document.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Source Author/)
    expect(rendered).to match(/Source Institution/)
    expect(rendered).to match(/Department/)
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Default View/)
    expect(rendered).to match(/Source File Filename/)
    expect(rendered).to match(/Source File Content Type/)
    expect(rendered).to match(/1/)
  end
end
