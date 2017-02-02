require 'spec_helper'

describe PivotalTracker::ProjectIdAndVersion do
  # We will be testing the class, not the instance
  subject { PivotalTracker::ProjectIdAndVersion }

  describe ".new" do
    it "can initialize an instance with attributes" do
      attributes = {
        id: 123, version: 234, kind: 'thing'
      }

      project_id_and_version = subject.new(attributes)
      expect(project_id_and_version).to be_a PivotalTracker::ProjectIdAndVersion

      attributes.each do |attribute, value|
        expect(project_id_and_version.send(attribute)).to eq(value)
      end
    end
  end
end
