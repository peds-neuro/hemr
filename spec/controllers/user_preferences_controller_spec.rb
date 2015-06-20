require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe UserPreferencesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # UserPreference. As you add validations to UserPreference, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # UserPreferencesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all user_preferences as @user_preferences" do
      user_preference = UserPreference.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:user_preferences)).to eq([user_preference])
    end
  end

  describe "GET #show" do
    it "assigns the requested user_preference as @user_preference" do
      user_preference = UserPreference.create! valid_attributes
      get :show, {:id => user_preference.to_param}, valid_session
      expect(assigns(:user_preference)).to eq(user_preference)
    end
  end

  describe "GET #new" do
    it "assigns a new user_preference as @user_preference" do
      get :new, {}, valid_session
      expect(assigns(:user_preference)).to be_a_new(UserPreference)
    end
  end

  describe "GET #edit" do
    it "assigns the requested user_preference as @user_preference" do
      user_preference = UserPreference.create! valid_attributes
      get :edit, {:id => user_preference.to_param}, valid_session
      expect(assigns(:user_preference)).to eq(user_preference)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new UserPreference" do
        expect {
          post :create, {:user_preference => valid_attributes}, valid_session
        }.to change(UserPreference, :count).by(1)
      end

      it "assigns a newly created user_preference as @user_preference" do
        post :create, {:user_preference => valid_attributes}, valid_session
        expect(assigns(:user_preference)).to be_a(UserPreference)
        expect(assigns(:user_preference)).to be_persisted
      end

      it "redirects to the created user_preference" do
        post :create, {:user_preference => valid_attributes}, valid_session
        expect(response).to redirect_to(UserPreference.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved user_preference as @user_preference" do
        post :create, {:user_preference => invalid_attributes}, valid_session
        expect(assigns(:user_preference)).to be_a_new(UserPreference)
      end

      it "re-renders the 'new' template" do
        post :create, {:user_preference => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested user_preference" do
        user_preference = UserPreference.create! valid_attributes
        put :update, {:id => user_preference.to_param, :user_preference => new_attributes}, valid_session
        user_preference.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested user_preference as @user_preference" do
        user_preference = UserPreference.create! valid_attributes
        put :update, {:id => user_preference.to_param, :user_preference => valid_attributes}, valid_session
        expect(assigns(:user_preference)).to eq(user_preference)
      end

      it "redirects to the user_preference" do
        user_preference = UserPreference.create! valid_attributes
        put :update, {:id => user_preference.to_param, :user_preference => valid_attributes}, valid_session
        expect(response).to redirect_to(user_preference)
      end
    end

    context "with invalid params" do
      it "assigns the user_preference as @user_preference" do
        user_preference = UserPreference.create! valid_attributes
        put :update, {:id => user_preference.to_param, :user_preference => invalid_attributes}, valid_session
        expect(assigns(:user_preference)).to eq(user_preference)
      end

      it "re-renders the 'edit' template" do
        user_preference = UserPreference.create! valid_attributes
        put :update, {:id => user_preference.to_param, :user_preference => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested user_preference" do
      user_preference = UserPreference.create! valid_attributes
      expect {
        delete :destroy, {:id => user_preference.to_param}, valid_session
      }.to change(UserPreference, :count).by(-1)
    end

    it "redirects to the user_preferences list" do
      user_preference = UserPreference.create! valid_attributes
      delete :destroy, {:id => user_preference.to_param}, valid_session
      expect(response).to redirect_to(user_preferences_url)
    end
  end

end
