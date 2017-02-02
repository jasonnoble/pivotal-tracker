require 'spec_helper'

describe PivotalTracker::IterationOverride do
  context '#new' do
    it 'initializes with attributes' do
      attributes = {number: 1, project_id: 1, length: 1, team_strength: 1.0, kind: 'kind'}
      iteration_override = PivotalTracker::IterationOverride.new(attributes)

      expect(iteration_override).to be_a PivotalTracker::IterationOverride

      attributes.each do |attribute, key|
        expect(iteration_override.send(attribute)).to eq key
      end
    end
  end
end