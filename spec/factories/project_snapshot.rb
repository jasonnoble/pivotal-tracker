require './lib/pivotal-tracker/project_snapshot'

FactoryGirl.define do
  factory :project_snapshot, class: PivotalTracker::ProjectSnapshot do
    date    DateTime.now
    current []
    backlog []
    icebox  []
    kind    'project_snapshot'
  end
end
