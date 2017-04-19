require 'spec_helper'

describe PivotalTracker::CycleTimeDetails do
  context '#new' do
    it 'initializes with attributes' do
      attributes = { total_cycle_time: 10000,
                     started_time: 1000,
                     started_count: 2,
                     finished_time: 1000,
                     finished_count: 2,
                     delivered_time: 1000,
                     delivered_count: 2,
                     rejected_time: 1000,
                     rejected_count: 2,
                     story_id: 138828105,
                     kind: 'cycle_time_details'
                    }

      cycle_time_details = PivotalTracker::CycleTimeDetails.new(attributes)

      expect(cycle_time_details).to be_a PivotalTracker::CycleTimeDetails
    end
  end
end
