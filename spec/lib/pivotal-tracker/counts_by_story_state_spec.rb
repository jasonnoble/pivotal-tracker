require 'spec_helper'

describe PivotalTracker::CountsByStoryState do
  context '#new' do
    it 'initializes with attributes' do
      attributes = { delivered: 1,
                     unscheduled: 1,
                     rejected: 1,
                     finished: 1,
                     unstarted: 1,
                     planned: 1,
                     accepted: 1,
                     started: 1,
                     kind: 'counts_by_story_state' }

      counts_by_story_state = PivotalTracker::CountsByStoryState.new(attributes)

      expect(counts_by_story_state).to be_a PivotalTracker::CountsByStoryState

      attributes.each do |attribute, value|
        expect(counts_by_story_state.send(attribute)).to eq value
      end
    end
  end
end
