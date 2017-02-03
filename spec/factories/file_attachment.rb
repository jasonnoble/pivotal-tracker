require './lib/pivotal-tracker/file_attachment'

FactoryGirl.define do
  factory :file_attachment, class: PivotalTracker::FileAttachment do
    sequence(:id) { |n| n }
    filename      'filename'
    created_at    DateTime.now
    uploader_id   1
    thumbnailable true
    height        1
    width         1
    size          1
    download_url  { Faker::Internet.url }
    content_type  'content_type'
    uploaded      true
    big_url       { Faker::Internet.url }
    thumbnail_url { Faker::Internet.url }
    kind          'file_attachment'
  end
end
