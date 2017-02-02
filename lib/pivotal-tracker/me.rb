require './lib/pivotal-tracker/resource'

class PivotalTracker::Me < PivotalTracker::Resource
  attr_accessor :api_token, :created_at, :email, :has_google_identity, :id,
                :initals, :kind, :name, :personal_settings, :project_ids,
                :receives_in_app_notifications, :time_zone, :updated_at,
                :username, :workspace_ids

end
