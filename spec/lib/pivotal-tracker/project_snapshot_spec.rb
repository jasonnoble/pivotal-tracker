require 'spec_helper'

describe PivotalTracker::ProjectSnapshot do
  context '#new' do
    it 'initializes with attributes' do
      project_snapshot = create(:project_snapshot)

      expect(project_snapshot).to be_a PivotalTracker::ProjectSnapshot

      FactoryGirl.attributes_for(:project_snapshot).each do |attribute, value|
        expect(project_snapshot.send(attribute)).to eq value
      end
    end
  end
end
