require './lib/pivotal-tracker/resource'

class PivotalTracker::ProjectSnapshot < PivotalTracker::Resource
  
  attr_accessor :backlog, :current, :date, :icebox, :kind

end
