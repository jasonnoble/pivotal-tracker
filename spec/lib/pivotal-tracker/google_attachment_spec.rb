require 'spec_helper'

describe PivotalTracker::GoogleAttachment do
  # We will be testing the class, not the instance
  subject { PivotalTracker::GoogleAttachment }

  describe ".new" do
    it "can initialize an instance with attributes" do
      attributes = {
        id: 123, comment_id: 987, person_id: 654,
        google_kind: 'string', title: 'string',
        google_id: 'string', alternate_link: 'string',
        resource_id: 'string', kind: 'string'
      }

      google_attachment = subject.new(attributes)
      expect(google_attachment).to be_a PivotalTracker::GoogleAttachment

      attributes.each do |attribute, value|
        expect(google_attachment.send(attribute)).to eq(value)
      end
    end
  end
end
