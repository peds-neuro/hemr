require 'rails_helper'

RSpec.describe "user_preferences/show", type: :view do
  before(:each) do
    @user_preference = assign(:user_preference, UserPreference.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
