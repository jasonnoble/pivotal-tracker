require './lib/pivotal-tracker/label'

FactoryGirl.define do
  factory :label, class: PivotalTracker::Label do
    sequence(:id)
    counts        []
    created_at    DateTime.now
    kind          'label'
    name          { Faker::Name.name }
    project_id    1
    updated_at    DateTime.now
  end
end
