require './lib/pivotal-tracker/iteration'

FactoryGirl.define do
  factory :iteration, class: PivotalTracker::Iteration do
    number           1
    project_id       1
    length           2
    team_strength    1.0
    story_ids        []
    start            DateTime.now
    finish           DateTime.now
    velocity         1.0
    points           1
    accepted_points  1
    effective_points 1
    accepted         []
    created          []
    analytics        []
    kind             'iteration'
  end
end
