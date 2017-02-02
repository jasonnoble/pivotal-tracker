require './lib/pivotal_tracker'

FactoryGirl.define do
  skip_create

  factory :jira_integration, class: PivotalTracker::JiraIntegration do
    active true
    api_username 'hello'
    api_password 'password'
    base_url '/'
    can_import true
    created_at Time.now
    filter_id '1'
    id 1
    is_other true
    kind 'kind'
    name 'name'
    project_id 1
    story_name 'story'
    updated_at Time.now
    update_comments true
    update_state true

    initialize_with { new(attributes) }
  end
end
