class PivotalTracker::JiraIntegration
  attr_accessor :active,
                :api_username, :api_password, :base_url,
                :can_import, :created_at, :filter_id,
                :id, :is_other, :kind, :name,
                :project_id, :story_name, :updated_at,
                :update_comments, :update_state


  def initialize(jira_integration_attributes)
    jira_integration_attributes.each do |attribute, value|
      self.send(:"#{attribute}=", value)
    end
  end
end
