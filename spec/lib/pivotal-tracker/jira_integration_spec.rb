require 'spec_helper'

describe PivotalTracker::JiraIntegration do
  it_behaves_like "an API backed model" do
    let(:attributes) { FactoryGirl.attributes_for(:jira_integration) }
    let(:model) { PivotalTracker::JiraIntegration }
  end
end
