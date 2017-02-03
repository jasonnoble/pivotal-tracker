require './lib/pivotal-tracker/project_summary'

FactoryGirl.define do
  factory :project_summary, class: PivotalTracker::ProjectSummary do
    sequence(:id)  { |n| n }
    name           { Faker::Name.name}
    role           { Faker::Name.name }
    last_viewed_at DateTime.now
    kind           'project_summary'
  end
end
