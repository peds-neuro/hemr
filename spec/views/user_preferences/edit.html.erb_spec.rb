require 'rails_helper'

RSpec.describe "user_preferences/edit", type: :view do
  before(:each) do
    @user_preference = assign(:user_preference, UserPreference.create!())
  end

  it "renders the edit user_preference form" do
    render

    assert_select "form[action=?][method=?]", user_preference_path(@user_preference), "post" do
    end
  end
end
