require 'spec_helper'

describe PivotalTracker::JiraIntegration do
  # We will be testing the class, not the instance
  subject { PivotalTracker::JiraIntegration }

  describe ".new" do
    it "can initialize an instance with attributes" do
      attributes = {
        active: true, api_username: 'hello', api_password: 'password',
        base_url: 'http://www.example.com', can_import: true,
        created_at: Time.now, filter_id: '1293',
        id: 123, is_other: true, kind: 'kind', name: 'name',
        project_id: 987, story_name: 'story', updated_at: Time.now,
        update_comments: true, update_state: true
      }

      jira_integration = subject.new(attributes)
      expect(jira_integration).to be_a PivotalTracker::JiraIntegration

      attributes.each do |attribute, value|
        expect(jira_integration.send(attribute)).to eq(value)
      end
    end
  end
end
