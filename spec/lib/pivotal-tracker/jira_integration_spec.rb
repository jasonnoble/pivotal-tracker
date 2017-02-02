require 'spec_helper'

describe PivotalTracker::JiraIntegration do
  describe ".new" do
    it "can initialize an instance with attributes" do

      jira_integration = create(:jira_integration)

      expect(jira_integration).to be_a PivotalTracker::JiraIntegration

      FactoryGirl.attributes_for(:jira_integration).each do |attribute, value|
        expect(jira_integration.send(attribute)).to eq(value)
      end
    end
  end
end
