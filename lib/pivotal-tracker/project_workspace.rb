require './lib/pivotal-tracker/resource'

class PivotalTracker::ProjectWorkspace < PivotalTracker::Resource
  attr_accessor :id, :position_int, :project_id, :workspace_id, :kind
end
