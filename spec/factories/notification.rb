require './lib/pivotal-tracker/notification'

FactoryGirl.define do
  factory :notification, class: PivotalTracker::Notification do
    sequence(:id)
    project_id            1
    performer_id          1
    message               'message'
    context               'context'
    notification_type     'story'
    new_attachment_count  1
    action                'string'
    story_id              1
    epic_id               1
    comment_id            1
    created_at            DateTime.now
    updated_at            DateTime.now
    read_at               DateTime.now
    kind                  'notification'
  end
end
