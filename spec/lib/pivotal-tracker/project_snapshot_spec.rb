require 'spec_helper'

describe PivotalTracker::ProjectSnapshot do
  context '#new' do
    it 'initializes with attributes' do
      attributes = {date: Time.now, current: [], backlog: [], icebox: [], kind: 'kind'}
      project_snapshot = PivotalTracker::ProjectSnapshot.new(attributes)

      expect(project_snapshot).to be_a PivotalTracker::ProjectSnapshot

      attributes.each do |attribute, value|
        expect(project_snapshot.send(attribute)).to eq value
      end
    end
  end
end
