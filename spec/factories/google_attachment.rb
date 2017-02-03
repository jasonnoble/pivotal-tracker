require './lib/pivotal-tracker/google_attachment'

FactoryGirl.define do
  factory :google_attachment, class: PivotalTracker::GoogleAttachment do
    sequence(:id)
    comment_id     1
    person_id      1
    google_kind    'calendar#calendar'
    title          'string'
    google_id      '/'
    alternate_link 'string'
    resource_id    'string'
    kind           'google_attachment'
  end
end
