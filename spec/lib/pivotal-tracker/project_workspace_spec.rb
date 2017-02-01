require 'spec_helper'

describe PivotalTracker::ProjectWorkspace do
  
  describe '#new' do
    it 'initializes with attributes' do
      attributes = {id: 1, position_int: 1, project_id: 1, workspace_id: 1, kind: 'kind'}
      project_workspace =  PivotalTracker::ProjectWorkspace.new(attributes)

      expect(project_workspace).to be_a PivotalTracker::ProjectWorkspace

      attributes.each do |attribute, value|
        expect(project_workspace.send(attribute)).to eq(value)
      end
    end
  end
end