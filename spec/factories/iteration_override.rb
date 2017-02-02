require './lib/pivotal-tracker/iteration_override'

FactoryGirl.define do
  factory :iteration_override, class: PivotalTracker::IterationOverride do
    kind          'iteration_override'
    length         1
    number         1
    project_id     1
    team_strength  1.0
  end
end
