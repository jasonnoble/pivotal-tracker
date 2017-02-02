require 'spec_helper'

describe PivotalTracker::GoogleAttachment do
  describe ".new" do
    it "can initialize an instance with attributes" do

      google_attachment = create(:google_attachment)

      expect(google_attachment).to be_a PivotalTracker::GoogleAttachment

      FactoryGirl.attributes_for(:google_attachment).each do |attribute, value|
        expect(google_attachment.send(attribute)).to eq(value)
      end
    end
  end
end
