require 'rails_helper'

RSpec.describe "UserPreferences", type: :request do
  describe "GET /user_preferences" do
    it "works! (now write some real specs)" do
      get user_preferences_path
      expect(response).to have_http_status(200)
    end
  end
end
