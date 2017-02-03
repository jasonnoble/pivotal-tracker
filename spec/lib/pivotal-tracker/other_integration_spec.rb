require 'spec_helper'

describe PivotalTracker::OtherIntegration do
  it_behaves_like "an API backed model" do
    let(:attributes) { FactoryGirl.attributes_for(:other_integration) }
    let(:model) { PivotalTracker::OtherIntegration }
  end
end
