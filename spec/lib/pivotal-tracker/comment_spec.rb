require 'spec_helper'

describe PivotalTracker::Comment do
  context '#new' do
    it 'initializes with attributes' do
      attributes = {id: 1,
                    story_id: 1,
                    epic_id: 1,
                    text: 'text',
                    person_id: 1,
                    created_at: Time.now,
                    updated_at: Time.now,
                    file_attachment_ids: [1,2,3],
                    google_attachment_ids: [1,2,3],
                    attachment_ids: [1,2,3],
                    commit_identifier: 'string',
                    commit_type: 'string',
                    kind: 'comment'}

      comment = PivotalTracker::Comment.new(attributes)

      expect(comment).to be_a PivotalTracker::Comment

      attributes.each do |attribute, value|
        expect(comment.send(attribute)).to eq value
      end
    end
  end
end
