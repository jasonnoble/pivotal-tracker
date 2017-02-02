require 'spec_helper'

describe PivotalTracker::Notification do
  describe '#new' do
    it 'initializes with valid attributes' do
      attributes = {id: 0,
                    project_id: 0,
                    performer_id: 0,
                    message: "message",
                    context: "context",
                    notification_type: "story",
                    new_attachment_count: 1,
                    action: "string",
                    story_id: 0,
                    epic_id: 0,
                    comment_id: 0,
                    created_at: DateTime.now,
                    updated_at: DateTime.now,
                    read_at: DateTime.now,
                    kind: "kind"
                    }

      notification = PivotalTracker::Notification.new(attributes)

      attributes.each do |attribute, value|
        expect(notification.send(attribute)).to eq(value)
      end
    end
  end
end
