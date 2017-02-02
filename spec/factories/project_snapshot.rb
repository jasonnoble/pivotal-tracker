require './lib/pivotal_tracker'

FactoryGirl.define do
  factory :project_snapshot, class: PivotalTracker::ProjectSnapshot do
    date Time.now
    current []
    backlog []
    icebox []
    kind 'kind'
  end
end
