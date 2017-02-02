require './lib/pivotal_tracker'

FactoryGirl.define do
  skip_create
  
  factory :me, class: PivotalTracker::Me do
    api_token '0'
    created_at DateTime.now
    email 'example@example.com'
    has_google_identity true
    id 1
    initals "FL"
    kind "me"
    name "username"
    personal_settings ({})
    project_ids ["#{ENV['PROJECT_ID']}"]
    receives_in_app_notifications true
    time_zone Time.now.zone
    updated_at DateTime.now
    username "username"
    workspace_ids [1,2]

    initialize_with { new(attributes) }
  end
end
