require './lib/pivotal_tracker'

FactoryGirl.define do
  factory :membership_summary, class: PivotalTracker::MembershipSummary do
    id 1
    project_id 1
    project_name 'name'
    project_color 'blue'
    favorite true
    role 'owner'
    last_viewed_at DateTime.now
    kind 'kind'
  end
end
