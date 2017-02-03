require './lib/pivotal-tracker/membership_summary'

FactoryGirl.define do
  factory :membership_summary, class: PivotalTracker::MembershipSummary do
    sequence(:id)
    project_id     1
    project_name   { Faker::Name.name }
    project_color  { Faker::Color.color_name }
    favorite       true
    role           'owner'
    last_viewed_at DateTime.now
    kind           'membership_summary'
  end
end
