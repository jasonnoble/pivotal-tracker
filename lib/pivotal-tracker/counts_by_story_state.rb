class PivotalTracker::CountsByStoryState < PivotalTracker::Resource
  attr_accessor :accepted, :delivered, :finished, :kind, :planned, :rejected,
                :started, :unscheduled, :unstarted
end
