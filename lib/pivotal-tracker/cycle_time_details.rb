class PivotalTracker::CycleTimeDetails < PivotalTracker::Resource
  attr_accessor :delivered_count, :delivered_time, :finished_count,
                :finished_time, :rejected_count, :rejected_time, :started_count,
                :started_time, :story_id, :total_cycle_time, :kind
end
