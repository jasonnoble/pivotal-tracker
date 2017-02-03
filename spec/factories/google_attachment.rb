require './lib/pivotal-tracker/google_attachment'

FactoryGirl.define do
  factory :google_attachment, class: PivotalTracker::GoogleAttachment do
    sequence(:id)
    comment_id     1
    person_id      1
    google_kind    'string'
    title          'string'
    google_id      'string'
    alternate_link 'string'
    resource_id    'string'
    kind           'string'
  end
end
