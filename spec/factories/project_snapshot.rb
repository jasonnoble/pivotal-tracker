require './lib/pivotal_tracker'

FactoryGirl.define do
  skip_create

  factory :project_snapshot, class: PivotalTracker::ProjectSnapshot do
    date Time.now
    current []
    backlog []
    icebox []
    kind 'kind'

    initialize_with { new(attributes) }
  end
end
