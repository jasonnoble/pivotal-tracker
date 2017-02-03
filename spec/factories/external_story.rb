require './lib/pivotal-tracker/external_story'

FactoryGirl.define do
  factory :external_story, class: PivotalTracker::ExternalStory do
    name                'name'
    description         'description'
    integration_id       1
    external_id         'ext'
    estimate            1.0
    state               1
    created_at          DateTime.now
    external_requester  'requester'
    external_owner      'owner'
    requested_by_id     1
    owned_by_id         1
    owner_ids           [1,2]
    story_type          'type'
    extra               ({})
    kind                'external_story'
  end
end
