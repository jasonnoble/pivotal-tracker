require './lib/pivotal-tracker/get_satisfaction_integration'

FactoryGirl.define do
  factory :get_satisfaction_integration, class: PivotalTracker::GetSatisfactionIntegration do
    sequence(:id)
    project_id    1
    can_import    true
    base_url      { Faker::Internet.url }
    is_other      true
    story_name    'name'
    name          'name'
    active        true
    created_at    DateTime.now
    updated_at    DateTime.now
    company       'company'
    product       'product'
    kind          'kind'
  end
end
