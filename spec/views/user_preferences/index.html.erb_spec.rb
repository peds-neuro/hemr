require 'rails_helper'

RSpec.describe "user_preferences/index", type: :view do
  before(:each) do
    assign(:user_preferences, [
      UserPreference.create!(),
      UserPreference.create!()
    ])
  end

  it "renders a list of user_preferences" do
    render
  end
end
