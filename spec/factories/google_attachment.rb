require './lib/pivotal_tracker'

FactoryGirl.define do
  skip_create

  factory :google_attachment, class: PivotalTracker::GoogleAttachment do
    id    1
    comment_id 1
    person_id  1
    google_kind 'string'
    title 'string'
    google_id 'string'
    alternate_link 'string'
    resource_id 'string'
    kind 'string'

    initialize_with { new(attributes) }
  end
end
