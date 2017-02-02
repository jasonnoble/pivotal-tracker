require './lib/pivotal-tracker/jira_integration'

FactoryGirl.define do
  factory :jira_integration, class: PivotalTracker::JiraIntegration do
    active          true
    api_username    { Faker::Internet.user_name }
    api_password    { Faker::Internet.password }
    base_url        { Faker::Internet.url }
    can_import      true
    created_at      DateTime.now
    filter_id       '1'
    id              1
    is_other        true
    kind            'jira_integration'
    name            { Faker::Name.name }
    project_id      1
    story_name      'story name'
    updated_at      DateTime.now
    update_comments true
    update_state    true
  end
end
