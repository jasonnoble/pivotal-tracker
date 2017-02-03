require './lib/pivotal-tracker/project_workspace'

FactoryGirl.define do
  factory :project_workspace, class: PivotalTracker::ProjectWorkspace do
    sequence(:id) { |n| n }
    position_int  1
    project_id    1
    workspace_id  1
    kind          'project_workspace'
  end
end
