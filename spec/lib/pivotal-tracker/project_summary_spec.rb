require 'spec_helper'

describe PivotalTracker::ProjectSummary do
  describe '#new' do
    it 'initializes with valid attribues' do
      attributes = {id: 0,
                    name: "name",
                    role: "owner",
                    last_viewed_at: DateTime.now,
                    kind: "project summary"
                    }

      project_summary = PivotalTracker::ProjectSummary.new(attributes)

      attributes.each do |attribute, value|
        expect(project_summary.send(attribute)).to eq(value)
      end
    end
  end
end
