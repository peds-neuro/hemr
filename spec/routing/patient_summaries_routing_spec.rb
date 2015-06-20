require "rails_helper"

RSpec.describe PatientSummariesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/patient_summaries").to route_to("patient_summaries#index")
    end

    it "routes to #new" do
      expect(:get => "/patient_summaries/new").to route_to("patient_summaries#new")
    end

    it "routes to #show" do
      expect(:get => "/patient_summaries/1").to route_to("patient_summaries#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/patient_summaries/1/edit").to route_to("patient_summaries#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/patient_summaries").to route_to("patient_summaries#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/patient_summaries/1").to route_to("patient_summaries#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/patient_summaries/1").to route_to("patient_summaries#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/patient_summaries/1").to route_to("patient_summaries#destroy", :id => "1")
    end

  end
end
