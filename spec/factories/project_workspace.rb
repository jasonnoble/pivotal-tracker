require './lib/pivotal_tracker'

FactoryGirl.define do
  skip_create

  factory :project_workspace, class: PivotalTracker::ProjectWorkspace do
    id 1
    position_int 1
    project_id 1
    workspace_id 1
    kind 'kind'

    initialize_with { new(attributes) }
  end
end
