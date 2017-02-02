class PivotalTracker::OtherIntegration < PivotalTracker::Resource
  attr_accessor :active, :base_url, :basic_auth_password, :basic_auth_username,
                :can_import, :created_at, :id, :import_api_url, :is_other,
                :kind, :name, :project_id, :story_name, :updated_at
end
