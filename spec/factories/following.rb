require './lib/pivotal_tracker'

FactoryGirl.define do
  factory :following, class: PivotalTracker::Following do
    id        1
    person_id 1
    story_id  1
    epic_id   1
    kind      'kind'
  end
end
