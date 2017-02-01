require 'spec_helper'

describe PivotalTracker::Iteration do
  context '#new' do
    it 'initializes with attributes' do
      attributes = {number: 1, project_id: 1, length: 1, team_strength: 1.0, story_ids: [],
                    start: Time.now, finish: Time.now, velocity: 1.0, points: 1,
                    accepted_points: 1, effective_points: 1, accepted: [], created: [],
                    analytics: [], kind: 'kind'}
      
      iteration = PivotalTracker::Iteration.new(attributes)

      expect(iteration).to be_a PivotalTracker::Iteration

      attributes.each do |attribute, value|
        expect(iteration.send(attribute)).to eq value
      end
    end
  end
end