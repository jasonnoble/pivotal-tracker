class PivotalTracker::JiraIntegration < PivotalTracker::Resource
  attr_accessor :active, :api_username, :api_password, :base_url,
                :can_import, :created_at, :filter_id,
                :id, :is_other, :kind, :name,
                :project_id, :story_name, :updated_at,
                :update_comments, :update_state
end
