require 'spec_helper'

describe PivotalTracker::GetSatisfactionIntegration do
  it_behaves_like "an API backed model" do
    let(:attributes) { FactoryGirl.attributes_for(:get_satisfaction_integration) }
    let(:model) { PivotalTracker::GetSatisfactionIntegration }
    let(:subject) { model.new(attributes) }
  end
end
