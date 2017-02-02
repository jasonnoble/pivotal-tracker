require './lib/pivotal_tracker'

FactoryGirl.define do
  skip_create

  factory :iteration, class: PivotalTracker::Iteration do
    number 1
    project_id 1
    length 2
    team_strength 1.0
    story_ids []
    start Time.now
    finish Time.now
    velocity 1.0
    points 1
    accepted_points 1
    effective_points 1
    accepted []
    created []
    analytics []
    kind 'kind'

    initialize_with { new(attributes) }
  end
end
