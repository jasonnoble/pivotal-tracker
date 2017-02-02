require 'spec_helper'

describe PivotalTracker::ProjectWorkspace do

  describe '#new' do
    it 'initializes with attributes' do
      project_workspace =  create(:project_workspace)

      expect(project_workspace).to be_a PivotalTracker::ProjectWorkspace

      FactoryGirl.attributes_for(:project_workspace).each do |attribute, value|
        expect(project_workspace.send(attribute)).to eq(value)
      end
    end
  end
end
