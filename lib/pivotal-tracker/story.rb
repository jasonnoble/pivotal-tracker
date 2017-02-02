require './lib/pivotal-tracker/resource'

class PivotalTracker::Story < PivotalTracker::Resource
  attr_accessor :accepted_at, :created_at, :current_state, :deadline,
                :description, :estimate, :id, :kind, :labels, :name,
                :owner_ids, :owned_by_id, :project_id, :requested_by_id, :story_type,
                :updated_at, :url
end
