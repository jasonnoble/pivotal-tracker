require './lib/pivotal-tracker/me'

FactoryGirl.define do
  factory :me, class: PivotalTracker::Me do
    sequence(:id)                 { |n| n }
    api_token                     "0"
    created_at                    DateTime.now
    email                         { Faker::Internet.email(name) }
    has_google_identity           true
    initials                      { name.split.map{|name| name[0] } }
    kind                          "me"
    name                          { Faker::Name.name }
    personal_settings             ({})
    project_ids                   ["#{ENV['PROJECT_ID']}"]
    receives_in_app_notifications true
    time_zone                     { Time.now.zone }
    updated_at                    DateTime.now
    username                      { Faker::Internet.user_name }
    workspace_ids                 [1,2]
  end
end
