require 'spec_helper'

describe PivotalTracker::MembershipSummary do
  describe '#new' do
    it 'initializes with valid attributes' do
      attributes = {id: 0,
                    project_id: 0,
                    project_name: "project name",
                    project_color: "blue",
                    favorite: true,
                    role: "owner",
                    last_viewed_at: DateTime.now,
                    kind: "membership_summary"
                    }

      membership_summary = PivotalTracker::MembershipSummary.new(attributes)

      attributes.each do |attribute, value|
        expect(membership_summary.send(attribute)).to eq(value)
      end
    end
  end
end
