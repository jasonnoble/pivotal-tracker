class PivotalTracker::Me < PivotalTracker::Resource
  attr_accessor :api_token, :created_at, :email, :has_google_identity, :id,
                :initials, :kind, :name, :personal_settings, :project_ids,
                :receives_in_app_notifications, :time_zone, :updated_at,
                :username, :workspace_ids
end
