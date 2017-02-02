require './lib/pivotal-tracker/project_summary'

FactoryGirl.define do
  factory :project_summary, class: PivotalTracker::ProjectSummary do
    id 1
    name 'name'
    role 'owner'
    last_viewed_at DateTime.now
    kind 'project_summary'
  end
end
