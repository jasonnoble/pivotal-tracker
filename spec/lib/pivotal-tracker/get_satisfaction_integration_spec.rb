require 'spec_helper'

describe PivotalTracker::GetSatisfactionIntegration do
  # We will be testing the class, not the instance
  subject { PivotalTracker::GetSatisfactionIntegration }

  describe ".new" do
    it "can initialize an instance with attributes" do
      attributes = {
        id: 123, project_id: 234, can_import: true,
        base_url: 'url', is_other: true, story_name: 'name',
        name: 'name', active: true, created_at: Time.now,
        updated_at: Time.now, company: 'company',
        product: 'thing', kind: 'thing'
      }

      get_satisfaction_integration = subject.new(attributes)
      expect(get_satisfaction_integration).to be_a PivotalTracker::GetSatisfactionIntegration

      attributes.each do |attribute, value|
        expect(get_satisfaction_integration.send(attribute)).to eq(value)
      end
    end
  end
end
