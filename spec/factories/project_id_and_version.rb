require './lib/pivotal-tracker/project_id_and_version'

FactoryGirl.define do
  factory :project_id_and_version, class: PivotalTracker::ProjectIdAndVersion do
    id      1
    version 1
    kind    'project_id_and_version'
  end
end
