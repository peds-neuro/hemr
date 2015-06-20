require 'rails_helper'

RSpec.describe "user_preferences/new", type: :view do
  before(:each) do
    assign(:user_preference, UserPreference.new())
  end

  it "renders new user_preference form" do
    render

    assert_select "form[action=?][method=?]", user_preferences_path, "post" do
    end
  end
end
