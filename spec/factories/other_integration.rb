require './lib/pivotal-tracker/other_integration'

FactoryGirl.define do
  factory :other_integration, class: PivotalTracker::OtherIntegration do
    sequence(:id)       { |n| n }
    project_id          1
    can_import          true
    base_url            { Faker::Internet.url }
    is_other            true
    story_name          'story'
    name                { Faker::Name.name}
    active              true
    created_at          DateTime.now
    updated_at          DateTime.now
    import_api_url      { Faker::Internet.url }
    basic_auth_username { Faker::Internet.user_name }
    basic_auth_password 'password'
    kind                'kind'
  end
end
